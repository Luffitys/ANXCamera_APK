.class abstract Lcom/android/camera/FunctionSamplePreviewMetadata;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/camera/IFuncPreviewMetadataListener;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0, p1}, Lcom/android/camera/IPreviewMetadataListener;->onSamplePreviewMetadata(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getSamplePeriod()J
    .locals 2

    const-wide/16 v0, 0x1f4

    return-wide v0
.end method

.method public final onPreviewMetadata(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
