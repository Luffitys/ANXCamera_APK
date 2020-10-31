.class public final synthetic Landroid/widget/inline/-$$Lambda$InlineContentView$Jo1eoRaZ6vcvcDkOB4jkMXqcJkE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/widget/inline/InlineContentView;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/inline/InlineContentView;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/inline/-$$Lambda$InlineContentView$Jo1eoRaZ6vcvcDkOB4jkMXqcJkE;->f$0:Landroid/widget/inline/InlineContentView;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Landroid/widget/inline/-$$Lambda$InlineContentView$Jo1eoRaZ6vcvcDkOB4jkMXqcJkE;->f$0:Landroid/widget/inline/InlineContentView;

    check-cast p1, Landroid/view/SurfaceControlViewHost$SurfacePackage;

    invoke-virtual {v0, p1}, Landroid/widget/inline/InlineContentView;->lambda$onAttachedToWindow$0$InlineContentView(Landroid/view/SurfaceControlViewHost$SurfacePackage;)V

    return-void
.end method
