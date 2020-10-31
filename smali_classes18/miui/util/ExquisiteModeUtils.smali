.class public Lmiui/util/ExquisiteModeUtils;
.super Ljava/lang/Object;
.source "ExquisiteModeUtils.java"


# static fields
.field public static final DEFAULT_EXQUISITE_SCALE_VALUE:F

.field public static final DEFAULT_MIUI_SCALE_VALUE:F = 1.0f

.field public static final MIUI_SCALE_FIELD_NAME:Ljava/lang/String; = "miuiScale"

.field public static final SUPPORT_EXQUISITE_MODE:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    nop

    const-string v0, "exquisite_mode_target_density"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v0, v2

    const-string v3, "exquisite_mode_origin_density"

    invoke-static {v3, v1}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    sput v0, Lmiui/util/ExquisiteModeUtils;->DEFAULT_EXQUISITE_SCALE_VALUE:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x0

    :goto_1c
    sput-boolean v1, Lmiui/util/ExquisiteModeUtils;->SUPPORT_EXQUISITE_MODE:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
