.class public final synthetic Landroid/media/tv/tuner/-$$Lambda$Tuner$vA8r09mS8B2Xp9N33dOsBZ4Y_0g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/media/tv/tuner/Tuner;

.field public final synthetic f$1:[Landroid/media/tv/tuner/frontend/Atsc3PlpInfo;


# direct methods
.method public synthetic constructor <init>(Landroid/media/tv/tuner/Tuner;[Landroid/media/tv/tuner/frontend/Atsc3PlpInfo;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/tv/tuner/-$$Lambda$Tuner$vA8r09mS8B2Xp9N33dOsBZ4Y_0g;->f$0:Landroid/media/tv/tuner/Tuner;

    iput-object p2, p0, Landroid/media/tv/tuner/-$$Lambda$Tuner$vA8r09mS8B2Xp9N33dOsBZ4Y_0g;->f$1:[Landroid/media/tv/tuner/frontend/Atsc3PlpInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/media/tv/tuner/-$$Lambda$Tuner$vA8r09mS8B2Xp9N33dOsBZ4Y_0g;->f$0:Landroid/media/tv/tuner/Tuner;

    iget-object v1, p0, Landroid/media/tv/tuner/-$$Lambda$Tuner$vA8r09mS8B2Xp9N33dOsBZ4Y_0g;->f$1:[Landroid/media/tv/tuner/frontend/Atsc3PlpInfo;

    invoke-virtual {v0, v1}, Landroid/media/tv/tuner/Tuner;->lambda$onAtsc3PlpInfos$14$Tuner([Landroid/media/tv/tuner/frontend/Atsc3PlpInfo;)V

    return-void
.end method
