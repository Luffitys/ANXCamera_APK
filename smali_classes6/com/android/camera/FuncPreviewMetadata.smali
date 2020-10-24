.class public abstract Lcom/android/camera/FuncPreviewMetadata;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/camera/IFuncPreviewMetadataListener;


# instance fields
.field protected final mModuleReference:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/FuncPreviewMetadata;->mModuleReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0, p1}, Lcom/android/camera/IPreviewMetadataListener;->onPreviewMetadata(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getSamplePeriod()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final onSamplePreviewMetadata(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
