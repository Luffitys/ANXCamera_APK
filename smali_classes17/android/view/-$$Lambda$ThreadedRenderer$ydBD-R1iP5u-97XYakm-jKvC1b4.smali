.class public final synthetic Landroid/view/-$$Lambda$ThreadedRenderer$ydBD-R1iP5u-97XYakm-jKvC1b4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/graphics/HardwareRenderer$FrameDrawingCallback;


# instance fields
.field public final synthetic f$0:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/-$$Lambda$ThreadedRenderer$ydBD-R1iP5u-97XYakm-jKvC1b4;->f$0:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final onFrameDraw(J)V
    .registers 4

    iget-object v0, p0, Landroid/view/-$$Lambda$ThreadedRenderer$ydBD-R1iP5u-97XYakm-jKvC1b4;->f$0:Ljava/util/ArrayList;

    invoke-static {v0, p1, p2}, Landroid/view/ThreadedRenderer;->lambda$updateRootDisplayList$0(Ljava/util/ArrayList;J)V

    return-void
.end method
