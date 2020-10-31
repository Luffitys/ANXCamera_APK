.class Landroid/view/PendingInsetsController$ShowRequest;
.super Ljava/lang/Object;
.source "PendingInsetsController.java"

# interfaces
.implements Landroid/view/PendingInsetsController$PendingRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/PendingInsetsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShowRequest"
.end annotation


# instance fields
.field private final mTypes:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/view/PendingInsetsController$ShowRequest;->mTypes:I

    return-void
.end method


# virtual methods
.method public replay(Landroid/view/InsetsController;)V
    .registers 3

    iget v0, p0, Landroid/view/PendingInsetsController$ShowRequest;->mTypes:I

    invoke-virtual {p1, v0}, Landroid/view/InsetsController;->show(I)V

    return-void
.end method
