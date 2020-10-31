.class public final synthetic Landroid/view/-$$Lambda$ScrollCaptureClient$rf3BkY5f-J7V42O_dMJLA1rnVkM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/ScrollCaptureClient;

.field public final synthetic f$1:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Landroid/view/ScrollCaptureClient;Landroid/graphics/Rect;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/-$$Lambda$ScrollCaptureClient$rf3BkY5f-J7V42O_dMJLA1rnVkM;->f$0:Landroid/view/ScrollCaptureClient;

    iput-object p2, p0, Landroid/view/-$$Lambda$ScrollCaptureClient$rf3BkY5f-J7V42O_dMJLA1rnVkM;->f$1:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/view/-$$Lambda$ScrollCaptureClient$rf3BkY5f-J7V42O_dMJLA1rnVkM;->f$0:Landroid/view/ScrollCaptureClient;

    iget-object v1, p0, Landroid/view/-$$Lambda$ScrollCaptureClient$rf3BkY5f-J7V42O_dMJLA1rnVkM;->f$1:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/ScrollCaptureClient;->lambda$requestImage$2$ScrollCaptureClient(Landroid/graphics/Rect;)V

    return-void
.end method
