.class public Lcom/ss/android/vesdk/VEReverb2Params$VEPresets;
.super Ljava/lang/Object;
.source "VEReverb2Params.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VEReverb2Params;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VEPresets"
.end annotation


# static fields
.field public static final CRISTAL:Lcom/ss/android/vesdk/VEReverb2Params;

.field public static final KTV:Lcom/ss/android/vesdk/VEReverb2Params;

.field public static final NONE:Lcom/ss/android/vesdk/VEReverb2Params;

.field public static final POP:Lcom/ss/android/vesdk/VEReverb2Params;

.field public static final ROCK:Lcom/ss/android/vesdk/VEReverb2Params;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/ss/android/vesdk/VEReverb2Params;

    invoke-direct {v0}, Lcom/ss/android/vesdk/VEReverb2Params;-><init>()V

    sput-object v0, Lcom/ss/android/vesdk/VEReverb2Params$VEPresets;->NONE:Lcom/ss/android/vesdk/VEReverb2Params;

    new-instance v0, Lcom/ss/android/vesdk/VEReverb2Params;

    invoke-direct {v0}, Lcom/ss/android/vesdk/VEReverb2Params;-><init>()V

    sput-object v0, Lcom/ss/android/vesdk/VEReverb2Params$VEPresets;->KTV:Lcom/ss/android/vesdk/VEReverb2Params;

    new-instance v0, Lcom/ss/android/vesdk/VEReverb2Params;

    invoke-direct {v0}, Lcom/ss/android/vesdk/VEReverb2Params;-><init>()V

    sput-object v0, Lcom/ss/android/vesdk/VEReverb2Params$VEPresets;->CRISTAL:Lcom/ss/android/vesdk/VEReverb2Params;

    new-instance v0, Lcom/ss/android/vesdk/VEReverb2Params;

    invoke-direct {v0}, Lcom/ss/android/vesdk/VEReverb2Params;-><init>()V

    sput-object v0, Lcom/ss/android/vesdk/VEReverb2Params$VEPresets;->POP:Lcom/ss/android/vesdk/VEReverb2Params;

    new-instance v0, Lcom/ss/android/vesdk/VEReverb2Params;

    invoke-direct {v0}, Lcom/ss/android/vesdk/VEReverb2Params;-><init>()V

    sput-object v0, Lcom/ss/android/vesdk/VEReverb2Params$VEPresets;->ROCK:Lcom/ss/android/vesdk/VEReverb2Params;

    sget-object v0, Lcom/ss/android/vesdk/VEReverb2Params$VEPresets;->NONE:Lcom/ss/android/vesdk/VEReverb2Params;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/ss/android/vesdk/VEReverb2Params;->enable:Z

    sget-object v0, Lcom/ss/android/vesdk/VEReverb2Params$VEPresets;->POP:Lcom/ss/android/vesdk/VEReverb2Params;

    const v1, 0xac44

    iput v1, v0, Lcom/ss/android/vesdk/VEReverb2Params;->rate:I

    const/4 v2, 0x2

    iput v2, v0, Lcom/ss/android/vesdk/VEReverb2Params;->oversamplefactor:I

    const/high16 v3, 0x3e800000    # 0.25f

    iput v3, v0, Lcom/ss/android/vesdk/VEReverb2Params;->ertolate:F

    const/high16 v3, -0x3e300000    # -26.0f

    iput v3, v0, Lcom/ss/android/vesdk/VEReverb2Params;->erefwet:F

    const/high16 v4, -0x3ee00000    # -10.0f

    iput v4, v0, Lcom/ss/android/vesdk/VEReverb2Params;->dry:F

    const v4, 0x3f666666    # 0.9f

    iput v4, v0, Lcom/ss/android/vesdk/VEReverb2Params;->ereffactor:F

    const v4, -0x40d1eb85    # -0.68f

    iput v4, v0, Lcom/ss/android/vesdk/VEReverb2Params;->erefwidth:F

    const v4, 0x3e6147ae    # 0.22f

    iput v4, v0, Lcom/ss/android/vesdk/VEReverb2Params;->width:F

    const v4, -0x3ec570a4    # -11.66f

    iput v4, v0, Lcom/ss/android/vesdk/VEReverb2Params;->wet:F

    const v4, 0x3e3851ec    # 0.18f

    iput v4, v0, Lcom/ss/android/vesdk/VEReverb2Params;->wander:F

    const v4, 0x3d8f5c29    # 0.07f

    iput v4, v0, Lcom/ss/android/vesdk/VEReverb2Params;->bassb:F

    const v4, 0x40923d71    # 4.57f

    iput v4, v0, Lcom/ss/android/vesdk/VEReverb2Params;->spin:F

    const v4, 0x468ca000    # 18000.0f

    iput v4, v0, Lcom/ss/android/vesdk/VEReverb2Params;->inputlpf:F

    const/high16 v5, 0x42ba0000    # 93.0f

    iput v5, v0, Lcom/ss/android/vesdk/VEReverb2Params;->basslpf:F

    const v5, 0x4663a800    # 14570.0f

    iput v5, v0, Lcom/ss/android/vesdk/VEReverb2Params;->damplpf:F

    const v5, 0x4685e800    # 17140.0f

    iput v5, v0, Lcom/ss/android/vesdk/VEReverb2Params;->outputlpf:F

    const v5, 0x407fffff    # 3.9999998f

    iput v5, v0, Lcom/ss/android/vesdk/VEReverb2Params;->rt60:F

    const v5, 0x3e428f5c    # 0.19f

    iput v5, v0, Lcom/ss/android/vesdk/VEReverb2Params;->delay:F

    sget-object v0, Lcom/ss/android/vesdk/VEReverb2Params$VEPresets;->KTV:Lcom/ss/android/vesdk/VEReverb2Params;

    iput v1, v0, Lcom/ss/android/vesdk/VEReverb2Params;->rate:I

    iput v2, v0, Lcom/ss/android/vesdk/VEReverb2Params;->oversamplefactor:I

    const v5, 0x3dcccccd    # 0.1f

    iput v5, v0, Lcom/ss/android/vesdk/VEReverb2Params;->ertolate:F

    const/high16 v5, -0x3e200000    # -28.0f

    iput v5, v0, Lcom/ss/android/vesdk/VEReverb2Params;->erefwet:F

    const/high16 v5, -0x3f200000    # -7.0f

    iput v5, v0, Lcom/ss/android/vesdk/VEReverb2Params;->dry:F

    const v5, 0x3fa8f5c2    # 1.3199999f

    iput v5, v0, Lcom/ss/android/vesdk/VEReverb2Params;->ereffactor:F

    const v5, 0x3de147b0    # 0.110000014f

    iput v5, v0, Lcom/ss/android/vesdk/VEReverb2Params;->erefwidth:F

    const v5, 0x3ed70a3d    # 0.42f

    iput v5, v0, Lcom/ss/android/vesdk/VEReverb2Params;->width:F

    const/high16 v5, -0x3e900000    # -15.0f

    iput v5, v0, Lcom/ss/android/vesdk/VEReverb2Params;->wet:F

    const v5, 0x3ec28f5c    # 0.38f

    iput v5, v0, Lcom/ss/android/vesdk/VEReverb2Params;->wander:F

    const v5, 0x3d99999a    # 0.075f

    iput v5, v0, Lcom/ss/android/vesdk/VEReverb2Params;->bassb:F

    const v5, 0x40e9999a    # 7.3f

    iput v5, v0, Lcom/ss/android/vesdk/VEReverb2Params;->spin:F

    const v5, 0x46156001    # 9560.001f

    iput v5, v0, Lcom/ss/android/vesdk/VEReverb2Params;->inputlpf:F

    const/high16 v5, 0x43080000    # 136.0f

    iput v5, v0, Lcom/ss/android/vesdk/VEReverb2Params;->basslpf:F

    const v5, 0x4636a800    # 11690.0f

    iput v5, v0, Lcom/ss/android/vesdk/VEReverb2Params;->damplpf:F

    const v5, 0x45dde000    # 7100.0f

    iput v5, v0, Lcom/ss/android/vesdk/VEReverb2Params;->outputlpf:F

    const v5, 0x4079999a    # 3.9f

    iput v5, v0, Lcom/ss/android/vesdk/VEReverb2Params;->rt60:F

    const v6, -0x4128f5c2    # -0.42000002f

    iput v6, v0, Lcom/ss/android/vesdk/VEReverb2Params;->delay:F

    sget-object v0, Lcom/ss/android/vesdk/VEReverb2Params$VEPresets;->ROCK:Lcom/ss/android/vesdk/VEReverb2Params;

    iput v1, v0, Lcom/ss/android/vesdk/VEReverb2Params;->rate:I

    iput v2, v0, Lcom/ss/android/vesdk/VEReverb2Params;->oversamplefactor:I

    const/4 v6, 0x0

    iput v6, v0, Lcom/ss/android/vesdk/VEReverb2Params;->ertolate:F

    iput v3, v0, Lcom/ss/android/vesdk/VEReverb2Params;->erefwet:F

    const/high16 v3, -0x3f000000    # -8.0f

    iput v3, v0, Lcom/ss/android/vesdk/VEReverb2Params;->dry:F

    const v3, 0x3fae147b    # 1.36f

    iput v3, v0, Lcom/ss/android/vesdk/VEReverb2Params;->ereffactor:F

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v0, Lcom/ss/android/vesdk/VEReverb2Params;->erefwidth:F

    const v7, 0x3f4f5c29    # 0.81f

    iput v7, v0, Lcom/ss/android/vesdk/VEReverb2Params;->width:F

    const/high16 v8, -0x3e500000    # -22.0f

    iput v8, v0, Lcom/ss/android/vesdk/VEReverb2Params;->wet:F

    const v8, 0x3efd70a4    # 0.495f

    iput v8, v0, Lcom/ss/android/vesdk/VEReverb2Params;->wander:F

    const v8, 0x3ca3d70a    # 0.02f

    iput v8, v0, Lcom/ss/android/vesdk/VEReverb2Params;->bassb:F

    const/high16 v8, 0x40e00000    # 7.0f

    iput v8, v0, Lcom/ss/android/vesdk/VEReverb2Params;->spin:F

    iput v4, v0, Lcom/ss/android/vesdk/VEReverb2Params;->inputlpf:F

    const/high16 v8, 0x42a80000    # 84.0f

    iput v8, v0, Lcom/ss/android/vesdk/VEReverb2Params;->basslpf:F

    iput v4, v0, Lcom/ss/android/vesdk/VEReverb2Params;->damplpf:F

    iput v4, v0, Lcom/ss/android/vesdk/VEReverb2Params;->outputlpf:F

    iput v5, v0, Lcom/ss/android/vesdk/VEReverb2Params;->rt60:F

    const v4, -0x43dc2900    # -0.00999999f

    iput v4, v0, Lcom/ss/android/vesdk/VEReverb2Params;->delay:F

    sget-object v0, Lcom/ss/android/vesdk/VEReverb2Params$VEPresets;->CRISTAL:Lcom/ss/android/vesdk/VEReverb2Params;

    iput v1, v0, Lcom/ss/android/vesdk/VEReverb2Params;->rate:I

    iput v2, v0, Lcom/ss/android/vesdk/VEReverb2Params;->oversamplefactor:I

    iput v6, v0, Lcom/ss/android/vesdk/VEReverb2Params;->ertolate:F

    const/high16 v1, -0x3dd80000    # -42.0f

    iput v1, v0, Lcom/ss/android/vesdk/VEReverb2Params;->erefwet:F

    const/high16 v1, -0x3e680000    # -19.0f

    iput v1, v0, Lcom/ss/android/vesdk/VEReverb2Params;->dry:F

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, v0, Lcom/ss/android/vesdk/VEReverb2Params;->ereffactor:F

    iput v3, v0, Lcom/ss/android/vesdk/VEReverb2Params;->erefwidth:F

    iput v7, v0, Lcom/ss/android/vesdk/VEReverb2Params;->width:F

    const/high16 v2, -0x3ec00000    # -12.0f

    iput v2, v0, Lcom/ss/android/vesdk/VEReverb2Params;->wet:F

    const v2, 0x3e2e147b    # 0.17f

    iput v2, v0, Lcom/ss/android/vesdk/VEReverb2Params;->wander:F

    iput v6, v0, Lcom/ss/android/vesdk/VEReverb2Params;->bassb:F

    iput v6, v0, Lcom/ss/android/vesdk/VEReverb2Params;->spin:F

    const v2, 0x45b81000    # 5890.0f

    iput v2, v0, Lcom/ss/android/vesdk/VEReverb2Params;->inputlpf:F

    const/high16 v2, 0x430f0000    # 143.0f

    iput v2, v0, Lcom/ss/android/vesdk/VEReverb2Params;->basslpf:F

    const v2, 0x45b1d000    # 5690.0f

    iput v2, v0, Lcom/ss/android/vesdk/VEReverb2Params;->damplpf:F

    const v2, 0x45ef1000    # 7650.0f

    iput v2, v0, Lcom/ss/android/vesdk/VEReverb2Params;->outputlpf:F

    const v2, 0x40666666    # 3.6f

    iput v2, v0, Lcom/ss/android/vesdk/VEReverb2Params;->rt60:F

    iput v1, v0, Lcom/ss/android/vesdk/VEReverb2Params;->delay:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
