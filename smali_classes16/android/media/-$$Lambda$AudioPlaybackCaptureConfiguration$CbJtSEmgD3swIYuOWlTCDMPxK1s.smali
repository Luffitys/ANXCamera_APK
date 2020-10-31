.class public final synthetic Landroid/media/-$$Lambda$AudioPlaybackCaptureConfiguration$CbJtSEmgD3swIYuOWlTCDMPxK1s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/-$$Lambda$AudioPlaybackCaptureConfiguration$CbJtSEmgD3swIYuOWlTCDMPxK1s;->f$0:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget v0, p0, Landroid/media/-$$Lambda$AudioPlaybackCaptureConfiguration$CbJtSEmgD3swIYuOWlTCDMPxK1s;->f$0:I

    check-cast p1, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;

    invoke-static {v0, p1}, Landroid/media/AudioPlaybackCaptureConfiguration;->lambda$getIntPredicates$4(ILandroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;)Z

    move-result p1

    return p1
.end method
