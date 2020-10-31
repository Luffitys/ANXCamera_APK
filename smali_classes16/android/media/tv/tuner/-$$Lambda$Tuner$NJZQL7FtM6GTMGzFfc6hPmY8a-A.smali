.class public final synthetic Landroid/media/tv/tuner/-$$Lambda$Tuner$NJZQL7FtM6GTMGzFfc6hPmY8a-A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/media/tv/tuner/Tuner;

.field public final synthetic f$1:[I


# direct methods
.method public synthetic constructor <init>(Landroid/media/tv/tuner/Tuner;[I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/tv/tuner/-$$Lambda$Tuner$NJZQL7FtM6GTMGzFfc6hPmY8a-A;->f$0:Landroid/media/tv/tuner/Tuner;

    iput-object p2, p0, Landroid/media/tv/tuner/-$$Lambda$Tuner$NJZQL7FtM6GTMGzFfc6hPmY8a-A;->f$1:[I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/media/tv/tuner/-$$Lambda$Tuner$NJZQL7FtM6GTMGzFfc6hPmY8a-A;->f$0:Landroid/media/tv/tuner/Tuner;

    iget-object v1, p0, Landroid/media/tv/tuner/-$$Lambda$Tuner$NJZQL7FtM6GTMGzFfc6hPmY8a-A;->f$1:[I

    invoke-virtual {v0, v1}, Landroid/media/tv/tuner/Tuner;->lambda$onPlpIds$8$Tuner([I)V

    return-void
.end method
