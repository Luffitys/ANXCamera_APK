.class abstract Lmiui/imagefilters/BlendImageFilter$BlenderPerChannel;
.super Lmiui/imagefilters/BlendImageFilter$Blender;
.source "BlendImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/imagefilters/BlendImageFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "BlenderPerChannel"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/imagefilters/BlendImageFilter;


# direct methods
.method constructor <init>(Lmiui/imagefilters/BlendImageFilter;)V
    .registers 2

    iput-object p1, p0, Lmiui/imagefilters/BlendImageFilter$BlenderPerChannel;->this$0:Lmiui/imagefilters/BlendImageFilter;

    invoke-direct {p0, p1}, Lmiui/imagefilters/BlendImageFilter$Blender;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-void
.end method


# virtual methods
.method public abstract blendChannel(FF)F
.end method

.method public blendColor(II)I
    .registers 16

    ushr-int/lit8 v0, p2, 0x10

    and-int/lit16 v0, v0, 0xff

    ushr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 v2, p2, 0xff

    ushr-int/lit8 v3, p1, 0x10

    and-int/lit16 v3, v3, 0xff

    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    and-int/lit16 v5, p1, 0xff

    int-to-float v6, v3

    const/high16 v7, 0x437f0000    # 255.0f

    div-float/2addr v6, v7

    int-to-float v8, v0

    div-float/2addr v8, v7

    invoke-virtual {p0, v6, v8}, Lmiui/imagefilters/BlendImageFilter$BlenderPerChannel;->blendChannel(FF)F

    move-result v6

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {v8, v6, v9}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v6

    mul-float/2addr v6, v7

    float-to-int v6, v6

    int-to-float v10, v4

    div-float/2addr v10, v7

    int-to-float v11, v1

    div-float/2addr v11, v7

    invoke-virtual {p0, v10, v11}, Lmiui/imagefilters/BlendImageFilter$BlenderPerChannel;->blendChannel(FF)F

    move-result v10

    invoke-static {v8, v10, v9}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v10

    mul-float/2addr v10, v7

    float-to-int v10, v10

    int-to-float v11, v5

    div-float/2addr v11, v7

    int-to-float v12, v2

    div-float/2addr v12, v7

    invoke-virtual {p0, v11, v12}, Lmiui/imagefilters/BlendImageFilter$BlenderPerChannel;->blendChannel(FF)F

    move-result v11

    invoke-static {v8, v11, v9}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v8

    mul-float/2addr v8, v7

    float-to-int v7, v8

    const/high16 v8, -0x1000000

    and-int/2addr v8, p2

    shl-int/lit8 v9, v6, 0x10

    or-int/2addr v8, v9

    shl-int/lit8 v9, v10, 0x8

    or-int/2addr v8, v9

    or-int/2addr v8, v7

    return v8
.end method
