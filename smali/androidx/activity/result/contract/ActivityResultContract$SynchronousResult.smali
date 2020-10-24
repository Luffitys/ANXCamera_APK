.class public final Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final mValue:Ljava/lang/Object;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnknownNullness"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult;->mValue:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnknownNullness"
        }
    .end annotation

    iget-object p0, p0, Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult;->mValue:Ljava/lang/Object;

    return-object p0
.end method
