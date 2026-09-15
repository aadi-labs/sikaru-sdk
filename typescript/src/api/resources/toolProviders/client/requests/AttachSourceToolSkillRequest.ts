
import * as Sikaru from "../../../../index.js";

/**
 * @example
 *     {
 *         capability_refs: ["capability_refs"],
 *         description: "description",
 *         source: {
 *             kind: "kind"
 *         }
 *     }
 */
export interface AttachSourceToolSkillRequest {
    capability_refs: string[];
    description: string;
    source: Sikaru.ToolSkillSourceRequest;
}
