.class public Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ServiceVersion;
.super Ljava/lang/Object;
.source "SecCamServiceClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServiceVersion"
.end annotation


# instance fields
.field public jniVerMaj_:I

.field public jniVerMin_:I

.field public serviceVerMaj_:I

.field public serviceVerMin_:I

.field public taVerMaj_:I

.field public taVerMin_:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
