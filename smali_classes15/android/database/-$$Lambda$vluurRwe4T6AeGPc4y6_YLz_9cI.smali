.class public final synthetic Landroid/database/-$$Lambda$vluurRwe4T6AeGPc4y6_YLz_9cI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/database/-$$Lambda$vluurRwe4T6AeGPc4y6_YLz_9cI;->f$0:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Landroid/database/-$$Lambda$vluurRwe4T6AeGPc4y6_YLz_9cI;->f$0:Ljava/util/ArrayList;

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
