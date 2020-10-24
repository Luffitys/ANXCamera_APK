.class public final enum Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

.field public static final enum Adreno:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

.field public static final enum Intel:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

.field public static final enum Mali:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

.field public static final enum NVIDIA:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

.field public static final enum PowerVR:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

.field public static final enum Unknown:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

.field public static final enum VideoCore:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

.field public static final enum Vivante:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

    const-string v1, "Unknown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;->Unknown:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

    new-instance v0, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

    const-string v1, "Adreno"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;->Adreno:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

    new-instance v0, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

    const-string v1, "Mali"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;->Mali:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

    new-instance v0, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

    const-string v1, "PowerVR"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;->PowerVR:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

    new-instance v0, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

    const-string v1, "Intel"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;->Intel:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

    new-instance v0, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

    const-string v1, "NVIDIA"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;->NVIDIA:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

    new-instance v0, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

    const-string v1, "Vivante"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;->Vivante:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

    new-instance v0, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

    const-string v1, "VideoCore"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;->VideoCore:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

    const/16 v1, 0x8

    new-array v1, v1, [Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

    sget-object v10, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;->Unknown:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

    aput-object v10, v1, v2

    sget-object v2, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;->Adreno:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

    aput-object v2, v1, v3

    sget-object v2, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;->Mali:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

    aput-object v2, v1, v4

    sget-object v2, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;->PowerVR:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

    aput-object v2, v1, v5

    sget-object v2, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;->Intel:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

    aput-object v2, v1, v6

    sget-object v2, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;->NVIDIA:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

    aput-object v2, v1, v7

    sget-object v2, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;->Vivante:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

    aput-object v2, v1, v8

    aput-object v0, v1, v9

    sput-object v1, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;->$VALUES:[Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;
    .locals 1

    const-class v0, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;
    .locals 1

    sget-object v0, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;->$VALUES:[Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

    invoke-virtual {v0}, [Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

    return-object v0
.end method
