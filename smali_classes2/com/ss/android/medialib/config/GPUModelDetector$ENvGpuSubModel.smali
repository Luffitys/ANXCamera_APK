.class public final enum Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;
.super Ljava/lang/Enum;
.source "GPUModelDetector.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/medialib/config/GPUModelDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ENvGpuSubModel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

.field public static final enum Adreno:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

.field public static final enum Intel_HD_Graphics:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

.field public static final enum Mali:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

.field public static final enum Mali_MP:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

.field public static final enum Mali_T:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

.field public static final enum NVIDIA_AP:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

.field public static final enum NVIDIA_Tegra:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

.field public static final enum NVIDIA_Tegra_X1:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

.field public static final enum PowerVR_Rogue_G:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

.field public static final enum PowerVR_Rogue_Han:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

.field public static final enum PowerVR_Rogue_Hood:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

.field public static final enum PowerVR_Rogue_Marlowe:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

.field public static final enum PowerVR_SGX:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

.field public static final enum PowerVR_SGX_MP:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

.field public static final enum PowerVR_SGX_MP2:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

.field public static final enum Unknown:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

.field public static final enum VideoCore_IV_HW:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

.field public static final enum Vivante_GC:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    const/4 v1, 0x0

    const-string v2, "Unknown"

    invoke-direct {v0, v2, v1}, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;->Unknown:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    new-instance v0, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    const/4 v2, 0x1

    const-string v3, "Adreno"

    invoke-direct {v0, v3, v2}, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;->Adreno:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    new-instance v0, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    const/4 v3, 0x2

    const-string v4, "Mali"

    invoke-direct {v0, v4, v3}, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;->Mali:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    new-instance v0, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    const/4 v4, 0x3

    const-string v5, "Mali_MP"

    invoke-direct {v0, v5, v4}, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;->Mali_MP:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    new-instance v0, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    const/4 v5, 0x4

    const-string v6, "Mali_T"

    invoke-direct {v0, v6, v5}, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;->Mali_T:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    new-instance v0, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    const/4 v6, 0x5

    const-string v7, "PowerVR_SGX"

    invoke-direct {v0, v7, v6}, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;->PowerVR_SGX:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    new-instance v0, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    const/4 v7, 0x6

    const-string v8, "PowerVR_SGX_MP"

    invoke-direct {v0, v8, v7}, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;->PowerVR_SGX_MP:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    new-instance v0, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    const/4 v8, 0x7

    const-string v9, "PowerVR_SGX_MP2"

    invoke-direct {v0, v9, v8}, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;->PowerVR_SGX_MP2:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    new-instance v0, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    const/16 v9, 0x8

    const-string v10, "PowerVR_Rogue_Han"

    invoke-direct {v0, v10, v9}, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;->PowerVR_Rogue_Han:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    new-instance v0, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    const/16 v10, 0x9

    const-string v11, "PowerVR_Rogue_Hood"

    invoke-direct {v0, v11, v10}, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;->PowerVR_Rogue_Hood:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    new-instance v0, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    const/16 v11, 0xa

    const-string v12, "PowerVR_Rogue_Marlowe"

    invoke-direct {v0, v12, v11}, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;->PowerVR_Rogue_Marlowe:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    new-instance v0, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    const/16 v12, 0xb

    const-string v13, "PowerVR_Rogue_G"

    invoke-direct {v0, v13, v12}, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;->PowerVR_Rogue_G:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    new-instance v0, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    const/16 v13, 0xc

    const-string v14, "Intel_HD_Graphics"

    invoke-direct {v0, v14, v13}, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;->Intel_HD_Graphics:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    new-instance v0, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    const/16 v14, 0xd

    const-string v15, "NVIDIA_Tegra"

    invoke-direct {v0, v15, v14}, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;->NVIDIA_Tegra:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    new-instance v0, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    const/16 v15, 0xe

    const-string v14, "NVIDIA_Tegra_X1"

    invoke-direct {v0, v14, v15}, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;->NVIDIA_Tegra_X1:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    new-instance v0, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    const-string v14, "NVIDIA_AP"

    const/16 v15, 0xf

    invoke-direct {v0, v14, v15}, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;->NVIDIA_AP:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    new-instance v0, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    const-string v14, "Vivante_GC"

    const/16 v15, 0x10

    invoke-direct {v0, v14, v15}, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;->Vivante_GC:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    new-instance v0, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    const-string v14, "VideoCore_IV_HW"

    const/16 v15, 0x11

    invoke-direct {v0, v14, v15}, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;->VideoCore_IV_HW:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    const/16 v0, 0x12

    new-array v0, v0, [Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    sget-object v14, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;->Unknown:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    aput-object v14, v0, v1

    sget-object v1, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;->Adreno:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;->Mali:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;->Mali_MP:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;->Mali_T:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;->PowerVR_SGX:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;->PowerVR_SGX_MP:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    aput-object v1, v0, v7

    sget-object v1, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;->PowerVR_SGX_MP2:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    aput-object v1, v0, v8

    sget-object v1, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;->PowerVR_Rogue_Han:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    aput-object v1, v0, v9

    sget-object v1, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;->PowerVR_Rogue_Hood:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    aput-object v1, v0, v10

    sget-object v1, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;->PowerVR_Rogue_Marlowe:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    aput-object v1, v0, v11

    sget-object v1, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;->PowerVR_Rogue_G:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    aput-object v1, v0, v12

    sget-object v1, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;->Intel_HD_Graphics:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    aput-object v1, v0, v13

    sget-object v1, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;->NVIDIA_Tegra:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;->NVIDIA_Tegra_X1:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;->NVIDIA_AP:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;->Vivante_GC:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;->VideoCore_IV_HW:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sput-object v0, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;->$VALUES:[Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;
    .locals 1

    const-class v0, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;
    .locals 1

    sget-object v0, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;->$VALUES:[Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    invoke-virtual {v0}, [Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    return-object v0
.end method
