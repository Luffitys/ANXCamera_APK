.class Lmiui/imagefilters/BlendImageFilter$25;
.super Lmiui/imagefilters/BlendImageFilter$Blender;
.source "BlendImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/imagefilters/BlendImageFilter;->getCurrentBlender()Lmiui/imagefilters/BlendImageFilter$Blender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/imagefilters/BlendImageFilter;


# direct methods
.method constructor <init>(Lmiui/imagefilters/BlendImageFilter;)V
    .registers 2

    iput-object p1, p0, Lmiui/imagefilters/BlendImageFilter$25;->this$0:Lmiui/imagefilters/BlendImageFilter;

    invoke-direct {p0, p1}, Lmiui/imagefilters/BlendImageFilter$Blender;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-void
.end method

.method private blendChannel(FFF)F
    .registers 6

    mul-float v0, p3, p2

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p3

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public blendColor(II)I
    .registers 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    ushr-int/lit8 v3, v2, 0x18

    and-int/lit16 v3, v3, 0xff

    ushr-int/lit8 v4, v2, 0x10

    and-int/lit16 v4, v4, 0xff

    ushr-int/lit8 v5, v2, 0x8

    and-int/lit16 v5, v5, 0xff

    and-int/lit16 v6, v2, 0xff

    ushr-int/lit8 v7, v1, 0x10

    and-int/lit16 v7, v7, 0xff

    ushr-int/lit8 v8, v1, 0x8

    and-int/lit16 v8, v8, 0xff

    and-int/lit16 v9, v1, 0xff

    int-to-float v10, v7

    const/high16 v11, 0x437f0000    # 255.0f

    div-float/2addr v10, v11

    int-to-float v12, v4

    div-float/2addr v12, v11

    int-to-float v13, v3

    div-float/2addr v13, v11

    invoke-direct {v0, v10, v12, v13}, Lmiui/imagefilters/BlendImageFilter$25;->blendChannel(FFF)F

    move-result v10

    const/4 v12, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-static {v12, v10, v13}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v10

    mul-float/2addr v10, v11

    float-to-int v10, v10

    int-to-float v14, v8

    div-float/2addr v14, v11

    int-to-float v15, v5

    div-float/2addr v15, v11

    int-to-float v12, v3

    div-float/2addr v12, v11

    invoke-direct {v0, v14, v15, v12}, Lmiui/imagefilters/BlendImageFilter$25;->blendChannel(FFF)F

    move-result v12

    const/4 v14, 0x0

    invoke-static {v14, v12, v13}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v12

    mul-float/2addr v12, v11

    float-to-int v12, v12

    int-to-float v15, v9

    div-float/2addr v15, v11

    int-to-float v13, v6

    div-float/2addr v13, v11

    int-to-float v14, v3

    div-float/2addr v14, v11

    invoke-direct {v0, v15, v13, v14}, Lmiui/imagefilters/BlendImageFilter$25;->blendChannel(FFF)F

    move-result v13

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    invoke-static {v15, v13, v14}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v13

    mul-float/2addr v13, v11

    float-to-int v11, v13

    const/high16 v13, -0x1000000

    and-int/2addr v13, v2

    shl-int/lit8 v14, v10, 0x10

    or-int/2addr v13, v14

    shl-int/lit8 v14, v12, 0x8

    or-int/2addr v13, v14

    or-int/2addr v13, v11

    return v13
.end method
