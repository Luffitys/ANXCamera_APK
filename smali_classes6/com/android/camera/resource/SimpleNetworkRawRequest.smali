.class public Lcom/android/camera/resource/SimpleNetworkRawRequest;
.super Lcom/android/camera/resource/SimpleNetworkBaseRequest;
.source ""


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/resource/SimpleNetworkBaseRequest;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected process(Ljava/lang/String;Lcom/android/camera/resource/BaseResourceRaw;)Lcom/android/camera/resource/BaseResourceRaw;
    .locals 0
    .param p2    # Lcom/android/camera/resource/BaseResourceRaw;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p2, Lcom/android/camera/resource/BaseResourceRaw;->content:Ljava/lang/String;

    return-object p2
.end method

.method protected bridge synthetic process(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    check-cast p2, Lcom/android/camera/resource/BaseResourceRaw;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/resource/SimpleNetworkRawRequest;->process(Ljava/lang/String;Lcom/android/camera/resource/BaseResourceRaw;)Lcom/android/camera/resource/BaseResourceRaw;

    move-result-object p0

    return-object p0
.end method
