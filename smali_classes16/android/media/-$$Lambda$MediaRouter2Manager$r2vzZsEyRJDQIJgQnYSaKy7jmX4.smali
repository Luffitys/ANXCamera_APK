.class public final synthetic Landroid/media/-$$Lambda$MediaRouter2Manager$r2vzZsEyRJDQIJgQnYSaKy7jmX4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/media/MediaRouter2Manager$CallbackRecord;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/media/MediaRouter2Manager$CallbackRecord;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/-$$Lambda$MediaRouter2Manager$r2vzZsEyRJDQIJgQnYSaKy7jmX4;->f$0:Landroid/media/MediaRouter2Manager$CallbackRecord;

    iput p2, p0, Landroid/media/-$$Lambda$MediaRouter2Manager$r2vzZsEyRJDQIJgQnYSaKy7jmX4;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/media/-$$Lambda$MediaRouter2Manager$r2vzZsEyRJDQIJgQnYSaKy7jmX4;->f$0:Landroid/media/MediaRouter2Manager$CallbackRecord;

    iget v1, p0, Landroid/media/-$$Lambda$MediaRouter2Manager$r2vzZsEyRJDQIJgQnYSaKy7jmX4;->f$1:I

    invoke-static {v0, v1}, Landroid/media/MediaRouter2Manager;->lambda$notifyRequestFailed$5(Landroid/media/MediaRouter2Manager$CallbackRecord;I)V

    return-void
.end method
