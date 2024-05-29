import Alamofire
import UIKit

enum AIClientError: Error {
    case genericError(Error)
    case decodingError(Error)
}

protocol AIClient: AnyObject {
    func sendCompletion(
        with prompt: String,
        model: AIClientModelType,
        completionHandler: @escaping (Result<AIClientModel, AIClientError>) -> Void
    )
}

final class DefaultAIClient: AIClient {

    // MARK: - Private properties

    private let token: String

    // MARK: - Initializers

    init(token: String) {
        self.token = token
    }

    // MARK: - Public Methods

    func sendCompletion(
        with prompt: String,
        model: AIClientModelType,
        completionHandler: @escaping (Result<AIClientModel, AIClientError>) -> Void
    ) {
        let endpoint = AIClientEndPoint.completions
        let body = AIClientCommand(model: model.modelName, message: prompt)
        let headers: HTTPHeaders = [
            .authorization("Bearer \(token)"),
            .accept("application/json")
        ]

        AF.request(
            endpoint.baseURL + endpoint.path,
            method: HTTPMethod(rawValue: endpoint.method),
            parameters: body,
            encoder: JSONParameterEncoder.default,
            headers: headers
        )
        .validate(statusCode: 200..<300)
        .responseDecodable(of: AIClientModel.self) { response in
            switch response.result {
            case .success(let result):
                completionHandler(.success(result))
            case .failure(let error):
                if let decodingError = error.underlyingError as? DecodingError {
                    completionHandler(.failure(.decodingError(decodingError)))
                } else {
                    completionHandler(.failure(.genericError(error)))
                }
            }
        }
    }

}
