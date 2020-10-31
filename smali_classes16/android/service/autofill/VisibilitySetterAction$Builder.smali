.class public final Landroid/service/autofill/VisibilitySetterAction$Builder;
.super Ljava/lang/Object;
.source "VisibilitySetterAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/VisibilitySetterAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mDestroyed:Z

.field private final mVisibilities:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>(II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/VisibilitySetterAction$Builder;->mVisibilities:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, p2}, Landroid/service/autofill/VisibilitySetterAction$Builder;->setVisibility(II)Landroid/service/autofill/VisibilitySetterAction$Builder;

    return-void
.end method

.method static synthetic access$000(Landroid/service/autofill/VisibilitySetterAction$Builder;)Landroid/util/SparseIntArray;
    .registers 2

    iget-object v0, p0, Landroid/service/autofill/VisibilitySetterAction$Builder;->mVisibilities:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method private throwIfDestroyed()V
    .registers 3

    iget-boolean v0, p0, Landroid/service/autofill/VisibilitySetterAction$Builder;->mDestroyed:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Already called build()"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public build()Landroid/service/autofill/VisibilitySetterAction;
    .registers 3

    invoke-direct {p0}, Landroid/service/autofill/VisibilitySetterAction$Builder;->throwIfDestroyed()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/autofill/VisibilitySetterAction$Builder;->mDestroyed:Z

    new-instance v0, Landroid/service/autofill/VisibilitySetterAction;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/service/autofill/VisibilitySetterAction;-><init>(Landroid/service/autofill/VisibilitySetterAction$Builder;Landroid/service/autofill/VisibilitySetterAction$1;)V

    return-object v0
.end method

.method public setVisibility(II)Landroid/service/autofill/VisibilitySetterAction$Builder;
    .registers 6

    invoke-direct {p0}, Landroid/service/autofill/VisibilitySetterAction$Builder;->throwIfDestroyed()V

    if-eqz p2, :cond_24

    const/4 v0, 0x4

    if-eq p2, v0, :cond_24

    const/16 v0, 0x8

    if-ne p2, v0, :cond_d

    goto :goto_24

    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid visibility: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    :goto_24
    iget-object v0, p0, Landroid/service/autofill/VisibilitySetterAction$Builder;->mVisibilities:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    return-object p0
.end method
