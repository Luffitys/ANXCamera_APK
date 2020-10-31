.class public final synthetic Landroid/database/sqlite/-$$Lambda$SQLiteQueryBuilder$W2yQ6UjYGqGIu6HEomKgdgvGNKI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/database/sqlite/SQLiteQueryBuilder;


# direct methods
.method public synthetic constructor <init>(Landroid/database/sqlite/SQLiteQueryBuilder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/database/sqlite/-$$Lambda$SQLiteQueryBuilder$W2yQ6UjYGqGIu6HEomKgdgvGNKI;->f$0:Landroid/database/sqlite/SQLiteQueryBuilder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Landroid/database/sqlite/-$$Lambda$SQLiteQueryBuilder$W2yQ6UjYGqGIu6HEomKgdgvGNKI;->f$0:Landroid/database/sqlite/SQLiteQueryBuilder;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/database/sqlite/SQLiteQueryBuilder;->lambda$W2yQ6UjYGqGIu6HEomKgdgvGNKI(Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;)V

    return-void
.end method
