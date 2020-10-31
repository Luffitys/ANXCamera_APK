.class Lmiui/imagefilters/BlendImageFilter$6;
.super Lmiui/imagefilters/BlendImageFilter$BlenderPerChannel;
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

    iput-object p1, p0, Lmiui/imagefilters/BlendImageFilter$6;->this$0:Lmiui/imagefilters/BlendImageFilter;

    invoke-direct {p0, p1}, Lmiui/imagefilters/BlendImageFilter$BlenderPerChannel;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-void
.end method


# virtual methods
.method public blendChannel(FF)F
    .registers 6

    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v0, p2, v0

    const/high16 v1, 0x40000000    # 2.0f

    if-gez v0, :cond_b

    mul-float/2addr v1, p1

    mul-float/2addr v1, p2

    return v1

    :cond_b
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v2, v0, p1

    mul-float/2addr v2, v1

    sub-float v1, v0, p2

    mul-float/2addr v2, v1

    sub-float/2addr v0, v2

    return v0
.end method
