.class Landroid/arch/core/b/c$d;
.super Ljava/lang/Object;
.source "SafeIterableMap.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Landroid/arch/core/b/c$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/core/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;",
        "Landroid/arch/core/b/c$f<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private mCurrent:Landroid/arch/core/b/c$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/core/b/c$c<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private ma:Z

.field final synthetic this$0:Landroid/arch/core/b/c;


# direct methods
.method private constructor <init>(Landroid/arch/core/b/c;)V
    .locals 0

    iput-object p1, p0, Landroid/arch/core/b/c$d;->this$0:Landroid/arch/core/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/arch/core/b/c$d;->ma:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/arch/core/b/c;Landroid/arch/core/b/b;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/arch/core/b/c$d;-><init>(Landroid/arch/core/b/c;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/arch/core/b/c$c;)V
    .locals 1
    .param p1    # Landroid/arch/core/b/c$c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/core/b/c$c<",
            "TK;TV;>;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/arch/core/b/c$d;->mCurrent:Landroid/arch/core/b/c$c;

    if-ne p1, v0, :cond_1

    iget-object p1, v0, Landroid/arch/core/b/c$c;->la:Landroid/arch/core/b/c$c;

    iput-object p1, p0, Landroid/arch/core/b/c$d;->mCurrent:Landroid/arch/core/b/c$c;

    iget-object p1, p0, Landroid/arch/core/b/c$d;->mCurrent:Landroid/arch/core/b/c$c;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Landroid/arch/core/b/c$d;->ma:Z

    :cond_1
    return-void
.end method

.method public hasNext()Z
    .locals 3

    iget-boolean v0, p0, Landroid/arch/core/b/c$d;->ma:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroid/arch/core/b/c$d;->this$0:Landroid/arch/core/b/c;

    invoke-static {p0}, Landroid/arch/core/b/c;->a(Landroid/arch/core/b/c;)Landroid/arch/core/b/c$c;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    iget-object p0, p0, Landroid/arch/core/b/c$d;->mCurrent:Landroid/arch/core/b/c$c;

    if-eqz p0, :cond_2

    iget-object p0, p0, Landroid/arch/core/b/c$c;->mNext:Landroid/arch/core/b/c$c;

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Landroid/arch/core/b/c$d;->next()Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    iget-boolean v0, p0, Landroid/arch/core/b/c$d;->ma:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/arch/core/b/c$d;->ma:Z

    iget-object v0, p0, Landroid/arch/core/b/c$d;->this$0:Landroid/arch/core/b/c;

    invoke-static {v0}, Landroid/arch/core/b/c;->a(Landroid/arch/core/b/c;)Landroid/arch/core/b/c$c;

    move-result-object v0

    iput-object v0, p0, Landroid/arch/core/b/c$d;->mCurrent:Landroid/arch/core/b/c$c;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroid/arch/core/b/c$d;->mCurrent:Landroid/arch/core/b/c$c;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroid/arch/core/b/c$c;->mNext:Landroid/arch/core/b/c$c;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroid/arch/core/b/c$d;->mCurrent:Landroid/arch/core/b/c$c;

    :goto_1
    iget-object p0, p0, Landroid/arch/core/b/c$d;->mCurrent:Landroid/arch/core/b/c$c;

    return-object p0
.end method
