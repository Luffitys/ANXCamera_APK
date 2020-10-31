.class public final synthetic Landroid/view/-$$Lambda$ScrollCaptureTargetResolver$gdmLlyNUqtKoShKx1WC6kEG8ZHs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/ScrollCaptureTargetResolver;

.field public final synthetic f$1:Landroid/view/ScrollCaptureTarget;

.field public final synthetic f$2:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Landroid/view/ScrollCaptureTargetResolver;Landroid/view/ScrollCaptureTarget;Landroid/graphics/Rect;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/-$$Lambda$ScrollCaptureTargetResolver$gdmLlyNUqtKoShKx1WC6kEG8ZHs;->f$0:Landroid/view/ScrollCaptureTargetResolver;

    iput-object p2, p0, Landroid/view/-$$Lambda$ScrollCaptureTargetResolver$gdmLlyNUqtKoShKx1WC6kEG8ZHs;->f$1:Landroid/view/ScrollCaptureTarget;

    iput-object p3, p0, Landroid/view/-$$Lambda$ScrollCaptureTargetResolver$gdmLlyNUqtKoShKx1WC6kEG8ZHs;->f$2:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Landroid/view/-$$Lambda$ScrollCaptureTargetResolver$gdmLlyNUqtKoShKx1WC6kEG8ZHs;->f$0:Landroid/view/ScrollCaptureTargetResolver;

    iget-object v1, p0, Landroid/view/-$$Lambda$ScrollCaptureTargetResolver$gdmLlyNUqtKoShKx1WC6kEG8ZHs;->f$1:Landroid/view/ScrollCaptureTarget;

    iget-object v2, p0, Landroid/view/-$$Lambda$ScrollCaptureTargetResolver$gdmLlyNUqtKoShKx1WC6kEG8ZHs;->f$2:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Landroid/view/ScrollCaptureTargetResolver;->lambda$queryTarget$2$ScrollCaptureTargetResolver(Landroid/view/ScrollCaptureTarget;Landroid/graphics/Rect;)V

    return-void
.end method
