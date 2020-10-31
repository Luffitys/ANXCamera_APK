.class public final synthetic Landroid/service/voice/-$$Lambda$VoiceInteractionSession$fvrSEzYI3LvOp-mfME5kNVi91bw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Consumer;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/voice/-$$Lambda$VoiceInteractionSession$fvrSEzYI3LvOp-mfME5kNVi91bw;->f$0:Ljava/util/function/Consumer;

    iput-object p2, p0, Landroid/service/voice/-$$Lambda$VoiceInteractionSession$fvrSEzYI3LvOp-mfME5kNVi91bw;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/service/voice/-$$Lambda$VoiceInteractionSession$fvrSEzYI3LvOp-mfME5kNVi91bw;->f$0:Ljava/util/function/Consumer;

    iget-object v1, p0, Landroid/service/voice/-$$Lambda$VoiceInteractionSession$fvrSEzYI3LvOp-mfME5kNVi91bw;->f$1:Ljava/util/List;

    invoke-static {v0, v1}, Landroid/service/voice/VoiceInteractionSession;->lambda$requestDirectActions$1(Ljava/util/function/Consumer;Ljava/util/List;)V

    return-void
.end method
