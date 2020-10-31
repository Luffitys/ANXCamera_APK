.class public final synthetic Landroid/media/tv/tuner/filter/-$$Lambda$Filter$zXQWPbykiN1ARGXVsCOpJkUisdU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/media/tv/tuner/filter/Filter;

.field public final synthetic f$1:[Landroid/media/tv/tuner/filter/FilterEvent;


# direct methods
.method public synthetic constructor <init>(Landroid/media/tv/tuner/filter/Filter;[Landroid/media/tv/tuner/filter/FilterEvent;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/tv/tuner/filter/-$$Lambda$Filter$zXQWPbykiN1ARGXVsCOpJkUisdU;->f$0:Landroid/media/tv/tuner/filter/Filter;

    iput-object p2, p0, Landroid/media/tv/tuner/filter/-$$Lambda$Filter$zXQWPbykiN1ARGXVsCOpJkUisdU;->f$1:[Landroid/media/tv/tuner/filter/FilterEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/media/tv/tuner/filter/-$$Lambda$Filter$zXQWPbykiN1ARGXVsCOpJkUisdU;->f$0:Landroid/media/tv/tuner/filter/Filter;

    iget-object v1, p0, Landroid/media/tv/tuner/filter/-$$Lambda$Filter$zXQWPbykiN1ARGXVsCOpJkUisdU;->f$1:[Landroid/media/tv/tuner/filter/FilterEvent;

    invoke-virtual {v0, v1}, Landroid/media/tv/tuner/filter/Filter;->lambda$onFilterEvent$1$Filter([Landroid/media/tv/tuner/filter/FilterEvent;)V

    return-void
.end method
