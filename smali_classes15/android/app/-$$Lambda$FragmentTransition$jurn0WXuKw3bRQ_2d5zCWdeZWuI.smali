.class public final synthetic Landroid/app/-$$Lambda$FragmentTransition$jurn0WXuKw3bRQ_2d5zCWdeZWuI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/app/Fragment;

.field public final synthetic f$1:Landroid/app/Fragment;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Landroid/util/ArrayMap;

.field public final synthetic f$4:Landroid/view/View;

.field public final synthetic f$5:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Fragment;Landroid/app/Fragment;ZLandroid/util/ArrayMap;Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/-$$Lambda$FragmentTransition$jurn0WXuKw3bRQ_2d5zCWdeZWuI;->f$0:Landroid/app/Fragment;

    iput-object p2, p0, Landroid/app/-$$Lambda$FragmentTransition$jurn0WXuKw3bRQ_2d5zCWdeZWuI;->f$1:Landroid/app/Fragment;

    iput-boolean p3, p0, Landroid/app/-$$Lambda$FragmentTransition$jurn0WXuKw3bRQ_2d5zCWdeZWuI;->f$2:Z

    iput-object p4, p0, Landroid/app/-$$Lambda$FragmentTransition$jurn0WXuKw3bRQ_2d5zCWdeZWuI;->f$3:Landroid/util/ArrayMap;

    iput-object p5, p0, Landroid/app/-$$Lambda$FragmentTransition$jurn0WXuKw3bRQ_2d5zCWdeZWuI;->f$4:Landroid/view/View;

    iput-object p6, p0, Landroid/app/-$$Lambda$FragmentTransition$jurn0WXuKw3bRQ_2d5zCWdeZWuI;->f$5:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    iget-object v0, p0, Landroid/app/-$$Lambda$FragmentTransition$jurn0WXuKw3bRQ_2d5zCWdeZWuI;->f$0:Landroid/app/Fragment;

    iget-object v1, p0, Landroid/app/-$$Lambda$FragmentTransition$jurn0WXuKw3bRQ_2d5zCWdeZWuI;->f$1:Landroid/app/Fragment;

    iget-boolean v2, p0, Landroid/app/-$$Lambda$FragmentTransition$jurn0WXuKw3bRQ_2d5zCWdeZWuI;->f$2:Z

    iget-object v3, p0, Landroid/app/-$$Lambda$FragmentTransition$jurn0WXuKw3bRQ_2d5zCWdeZWuI;->f$3:Landroid/util/ArrayMap;

    iget-object v4, p0, Landroid/app/-$$Lambda$FragmentTransition$jurn0WXuKw3bRQ_2d5zCWdeZWuI;->f$4:Landroid/view/View;

    iget-object v5, p0, Landroid/app/-$$Lambda$FragmentTransition$jurn0WXuKw3bRQ_2d5zCWdeZWuI;->f$5:Landroid/graphics/Rect;

    invoke-static/range {v0 .. v5}, Landroid/app/FragmentTransition;->lambda$configureSharedElementsReordered$2(Landroid/app/Fragment;Landroid/app/Fragment;ZLandroid/util/ArrayMap;Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method
