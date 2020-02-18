.class Landroid/arch/core/b/c$a;
.super Landroid/arch/core/b/c$e;
.source "SafeIterableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/core/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/arch/core/b/c$e<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/arch/core/b/c$c;Landroid/arch/core/b/c$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/core/b/c$c<",
            "TK;TV;>;",
            "Landroid/arch/core/b/c$c<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Landroid/arch/core/b/c$e;-><init>(Landroid/arch/core/b/c$c;Landroid/arch/core/b/c$c;)V

    return-void
.end method


# virtual methods
.method b(Landroid/arch/core/b/c$c;)Landroid/arch/core/b/c$c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/core/b/c$c<",
            "TK;TV;>;)",
            "Landroid/arch/core/b/c$c<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object p0, p1, Landroid/arch/core/b/c$c;->la:Landroid/arch/core/b/c$c;

    return-object p0
.end method

.method c(Landroid/arch/core/b/c$c;)Landroid/arch/core/b/c$c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/core/b/c$c<",
            "TK;TV;>;)",
            "Landroid/arch/core/b/c$c<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object p0, p1, Landroid/arch/core/b/c$c;->mNext:Landroid/arch/core/b/c$c;

    return-object p0
.end method
