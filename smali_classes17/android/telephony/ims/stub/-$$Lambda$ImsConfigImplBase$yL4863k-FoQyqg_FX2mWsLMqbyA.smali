.class public final synthetic Landroid/telephony/ims/stub/-$$Lambda$ImsConfigImplBase$yL4863k-FoQyqg_FX2mWsLMqbyA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/ims/stub/-$$Lambda$ImsConfigImplBase$yL4863k-FoQyqg_FX2mWsLMqbyA;->f$0:I

    iput p2, p0, Landroid/telephony/ims/stub/-$$Lambda$ImsConfigImplBase$yL4863k-FoQyqg_FX2mWsLMqbyA;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget v0, p0, Landroid/telephony/ims/stub/-$$Lambda$ImsConfigImplBase$yL4863k-FoQyqg_FX2mWsLMqbyA;->f$0:I

    iget v1, p0, Landroid/telephony/ims/stub/-$$Lambda$ImsConfigImplBase$yL4863k-FoQyqg_FX2mWsLMqbyA;->f$1:I

    check-cast p1, Landroid/telephony/ims/aidl/IImsConfigCallback;

    invoke-static {v0, v1, p1}, Landroid/telephony/ims/stub/ImsConfigImplBase;->lambda$notifyConfigChanged$0(IILandroid/telephony/ims/aidl/IImsConfigCallback;)V

    return-void
.end method
