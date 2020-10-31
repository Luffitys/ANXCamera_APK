.class Lmiui/animation/styles/TintDrawable$2;
.super Ljava/lang/Object;
.source "TintDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/animation/styles/TintDrawable;->setAndGet(Landroid/view/View;)Lmiui/animation/styles/TintDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$ref:Lmiui/animation/styles/TintDrawable;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Lmiui/animation/styles/TintDrawable;)V
    .registers 3

    iput-object p1, p0, Lmiui/animation/styles/TintDrawable$2;->val$view:Landroid/view/View;

    iput-object p2, p0, Lmiui/animation/styles/TintDrawable$2;->val$ref:Lmiui/animation/styles/TintDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lmiui/animation/styles/TintDrawable$2;->val$view:Landroid/view/View;

    iget-object v1, p0, Lmiui/animation/styles/TintDrawable$2;->val$ref:Lmiui/animation/styles/TintDrawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
