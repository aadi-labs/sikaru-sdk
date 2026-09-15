
/**
 * @example
 *     {
 *         baseHarnessProfileId: "baseHarnessProfileId",
 *         compatibilityProfileId: "compatibilityProfileId",
 *         displayName: "displayName",
 *         harnessId: "harnessId",
 *         sourceArtifactId: "sourceArtifactId"
 *     }
 */
export interface CreateHarnessVersionRequest {
    baseHarnessProfileId: string;
    baseHarnessVersionId?: string | null;
    compatibilityProfileId: string;
    displayName: string;
    harnessId: string;
    sourceArtifactId: string;
    status?: CreateHarnessVersionRequest.Status;
}

export namespace CreateHarnessVersionRequest {
    export const Status = {
            Active: "active",
            Draft: "draft"
        } as const;
    export type Status = typeof Status[keyof typeof Status];
}
