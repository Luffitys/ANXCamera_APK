.class public final synthetic Landroid/widget/-$$Lambda$Magnifier$K0um0QSTAb4wXwua60CgJIIwGaI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/PixelCopy$OnPixelCopyFinishedListener;


# instance fields
.field public final synthetic f$0:Landroid/widget/Magnifier;

.field public final synthetic f$1:Landroid/widget/Magnifier$InternalPopupWindow;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Landroid/graphics/Point;

.field public final synthetic f$4:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/Magnifier;Landroid/widget/Magnifier$InternalPopupWindow;ZLandroid/graphics/Point;Landroid/graphics/Bitmap;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/-$$Lambda$Magnifier$K0um0QSTAb4wXwua60CgJIIwGaI;->f$0:Landroid/widget/Magnifier;

    iput-object p2, p0, Landroid/widget/-$$Lambda$Magnifier$K0um0QSTAb4wXwua60CgJIIwGaI;->f$1:Landroid/widget/Magnifier$InternalPopupWindow;

    iput-boolean p3, p0, Landroid/widget/-$$Lambda$Magnifier$K0um0QSTAb4wXwua60CgJIIwGaI;->f$2:Z

    iput-object p4, p0, Landroid/widget/-$$Lambda$Magnifier$K0um0QSTAb4wXwua60CgJIIwGaI;->f$3:Landroid/graphics/Point;

    iput-object p5, p0, Landroid/widget/-$$Lambda$Magnifier$K0um0QSTAb4wXwua60CgJIIwGaI;->f$4:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final onPixelCopyFinished(I)V
    .registers 8

    iget-object v0, p0, Landroid/widget/-$$Lambda$Magnifier$K0um0QSTAb4wXwua60CgJIIwGaI;->f$0:Landroid/widget/Magnifier;

    iget-object v1, p0, Landroid/widget/-$$Lambda$Magnifier$K0um0QSTAb4wXwua60CgJIIwGaI;->f$1:Landroid/widget/Magnifier$InternalPopupWindow;

    iget-boolean v2, p0, Landroid/widget/-$$Lambda$Magnifier$K0um0QSTAb4wXwua60CgJIIwGaI;->f$2:Z

    iget-object v3, p0, Landroid/widget/-$$Lambda$Magnifier$K0um0QSTAb4wXwua60CgJIIwGaI;->f$3:Landroid/graphics/Point;

    iget-object v4, p0, Landroid/widget/-$$Lambda$Magnifier$K0um0QSTAb4wXwua60CgJIIwGaI;->f$4:Landroid/graphics/Bitmap;

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Magnifier;->lambda$performPixelCopy$1$Magnifier(Landroid/widget/Magnifier$InternalPopupWindow;ZLandroid/graphics/Point;Landroid/graphics/Bitmap;I)V

    return-void
.end method
