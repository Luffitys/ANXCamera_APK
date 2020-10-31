.class public final synthetic Landroid/telephony/ims/feature/-$$Lambda$RcsFeature$RcsFeatureBinder$KfGHlTIPDjp_wBV1DAurP8YpIZw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;

.field public final synthetic f$1:Landroid/net/Uri;

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;Landroid/net/Uri;ILjava/lang/String;I)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/feature/-$$Lambda$RcsFeature$RcsFeatureBinder$KfGHlTIPDjp_wBV1DAurP8YpIZw;->f$0:Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;

    iput-object p2, p0, Landroid/telephony/ims/feature/-$$Lambda$RcsFeature$RcsFeatureBinder$KfGHlTIPDjp_wBV1DAurP8YpIZw;->f$1:Landroid/net/Uri;

    iput p3, p0, Landroid/telephony/ims/feature/-$$Lambda$RcsFeature$RcsFeatureBinder$KfGHlTIPDjp_wBV1DAurP8YpIZw;->f$2:I

    iput-object p4, p0, Landroid/telephony/ims/feature/-$$Lambda$RcsFeature$RcsFeatureBinder$KfGHlTIPDjp_wBV1DAurP8YpIZw;->f$3:Ljava/lang/String;

    iput p5, p0, Landroid/telephony/ims/feature/-$$Lambda$RcsFeature$RcsFeatureBinder$KfGHlTIPDjp_wBV1DAurP8YpIZw;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Landroid/telephony/ims/feature/-$$Lambda$RcsFeature$RcsFeatureBinder$KfGHlTIPDjp_wBV1DAurP8YpIZw;->f$0:Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;

    iget-object v1, p0, Landroid/telephony/ims/feature/-$$Lambda$RcsFeature$RcsFeatureBinder$KfGHlTIPDjp_wBV1DAurP8YpIZw;->f$1:Landroid/net/Uri;

    iget v2, p0, Landroid/telephony/ims/feature/-$$Lambda$RcsFeature$RcsFeatureBinder$KfGHlTIPDjp_wBV1DAurP8YpIZw;->f$2:I

    iget-object v3, p0, Landroid/telephony/ims/feature/-$$Lambda$RcsFeature$RcsFeatureBinder$KfGHlTIPDjp_wBV1DAurP8YpIZw;->f$3:Ljava/lang/String;

    iget v4, p0, Landroid/telephony/ims/feature/-$$Lambda$RcsFeature$RcsFeatureBinder$KfGHlTIPDjp_wBV1DAurP8YpIZw;->f$4:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->lambda$respondToCapabilityRequestWithError$9$RcsFeature$RcsFeatureBinder(Landroid/net/Uri;ILjava/lang/String;I)V

    return-void
.end method
