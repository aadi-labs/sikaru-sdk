
export const SikaruEnvironment = {
        Default: "https://api.sikaru.ai",
    } as const;

export type SikaruEnvironment = typeof SikaruEnvironment.Default;
