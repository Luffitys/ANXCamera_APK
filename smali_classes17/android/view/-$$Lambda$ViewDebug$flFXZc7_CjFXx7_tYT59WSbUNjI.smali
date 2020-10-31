.class public final synthetic Landroid/view/-$$Lambda$ViewDebug$flFXZc7_CjFXx7_tYT59WSbUNjI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/ViewDebug$ViewOperation;


# instance fields
.field public final synthetic f$0:Landroid/view/View;

.field public final synthetic f$1:Landroid/graphics/RecordingCanvas;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Landroid/graphics/RecordingCanvas;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/-$$Lambda$ViewDebug$flFXZc7_CjFXx7_tYT59WSbUNjI;->f$0:Landroid/view/View;

    iput-object p2, p0, Landroid/view/-$$Lambda$ViewDebug$flFXZc7_CjFXx7_tYT59WSbUNjI;->f$1:Landroid/graphics/RecordingCanvas;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/view/-$$Lambda$ViewDebug$flFXZc7_CjFXx7_tYT59WSbUNjI;->f$0:Landroid/view/View;

    iget-object v1, p0, Landroid/view/-$$Lambda$ViewDebug$flFXZc7_CjFXx7_tYT59WSbUNjI;->f$1:Landroid/graphics/RecordingCanvas;

    invoke-static {v0, v1}, Landroid/view/ViewDebug;->lambda$profileViewDraw$1(Landroid/view/View;Landroid/graphics/RecordingCanvas;)V

    return-void
.end method
