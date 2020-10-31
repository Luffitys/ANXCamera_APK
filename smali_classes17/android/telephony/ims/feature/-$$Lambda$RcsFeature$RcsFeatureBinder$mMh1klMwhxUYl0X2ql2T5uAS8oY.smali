.class public final synthetic Landroid/telephony/ims/feature/-$$Lambda$RcsFeature$RcsFeatureBinder$mMh1klMwhxUYl0X2ql2T5uAS8oY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;

.field public final synthetic f$1:Landroid/telephony/ims/RcsContactUceCapability;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;Landroid/telephony/ims/RcsContactUceCapability;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/feature/-$$Lambda$RcsFeature$RcsFeatureBinder$mMh1klMwhxUYl0X2ql2T5uAS8oY;->f$0:Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;

    iput-object p2, p0, Landroid/telephony/ims/feature/-$$Lambda$RcsFeature$RcsFeatureBinder$mMh1klMwhxUYl0X2ql2T5uAS8oY;->f$1:Landroid/telephony/ims/RcsContactUceCapability;

    iput p3, p0, Landroid/telephony/ims/feature/-$$Lambda$RcsFeature$RcsFeatureBinder$mMh1klMwhxUYl0X2ql2T5uAS8oY;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Landroid/telephony/ims/feature/-$$Lambda$RcsFeature$RcsFeatureBinder$mMh1klMwhxUYl0X2ql2T5uAS8oY;->f$0:Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;

    iget-object v1, p0, Landroid/telephony/ims/feature/-$$Lambda$RcsFeature$RcsFeatureBinder$mMh1klMwhxUYl0X2ql2T5uAS8oY;->f$1:Landroid/telephony/ims/RcsContactUceCapability;

    iget v2, p0, Landroid/telephony/ims/feature/-$$Lambda$RcsFeature$RcsFeatureBinder$mMh1klMwhxUYl0X2ql2T5uAS8oY;->f$2:I

    invoke-virtual {v0, v1, v2}, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->lambda$updateCapabilities$6$RcsFeature$RcsFeatureBinder(Landroid/telephony/ims/RcsContactUceCapability;I)V

    return-void
.end method
