/**
* Copyright IBM Corporation 2016
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
* http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
**/

import Foundation

public struct Passage: JSONDecodable {
	/// The unique identifier of the document ID
	public let documentId: String?
	
	/// The confidence score of the passage
	public let score: Double?
	
	/// The body of the passage
	public let text: String?
	
	/// The starting character index of the passage in the context of the document it is located within
	public let startOffset: Int?
	
	/// The ending character index of the passage in the context of the document it is located within
	public let endOffset: Int?
	
	/// The type of the data in the body. ie `html` or `text`
	public let field: String?
	
	/// Used internally to initialize a `Passage` model from JSON.
	public init(json: JSONWrapper) throws {
		documentId = try? json.getString(at: "document_id")
		score = try? json.getDouble(at: "passage_score")
		text = try? json.getString(at: "passage_text")
		startOffset = try? json.getInt(at: "start_offset")
		endOffset = try? json.getInt(at: "end_offset")
		field = try? json.getString(at: "field")
	}
}
