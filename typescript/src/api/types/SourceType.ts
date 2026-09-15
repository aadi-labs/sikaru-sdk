
export const SourceType = {
        Import: "import",
        Optimizer: "optimizer",
        ManualRelease: "manual_release",
        Rollback: "rollback"
    } as const;
export type SourceType = typeof SourceType[keyof typeof SourceType];
