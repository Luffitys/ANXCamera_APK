.class public final synthetic Landroid/media/tv/tuner/-$$Lambda$Lnb$IV6NQ1_DZcILU-MY88njae06xhs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/media/tv/tuner/Lnb;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/media/tv/tuner/Lnb;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/tv/tuner/-$$Lambda$Lnb$IV6NQ1_DZcILU-MY88njae06xhs;->f$0:Landroid/media/tv/tuner/Lnb;

    iput p2, p0, Landroid/media/tv/tuner/-$$Lambda$Lnb$IV6NQ1_DZcILU-MY88njae06xhs;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/media/tv/tuner/-$$Lambda$Lnb$IV6NQ1_DZcILU-MY88njae06xhs;->f$0:Landroid/media/tv/tuner/Lnb;

    iget v1, p0, Landroid/media/tv/tuner/-$$Lambda$Lnb$IV6NQ1_DZcILU-MY88njae06xhs;->f$1:I

    invoke-virtual {v0, v1}, Landroid/media/tv/tuner/Lnb;->lambda$onEvent$0$Lnb(I)V

    return-void
.end method
