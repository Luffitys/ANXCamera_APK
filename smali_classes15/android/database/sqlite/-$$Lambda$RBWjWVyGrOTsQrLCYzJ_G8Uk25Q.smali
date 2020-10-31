.class public final synthetic Landroid/database/sqlite/-$$Lambda$RBWjWVyGrOTsQrLCYzJ_G8Uk25Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public synthetic constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/database/sqlite/-$$Lambda$RBWjWVyGrOTsQrLCYzJ_G8Uk25Q;->f$0:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Landroid/database/sqlite/-$$Lambda$RBWjWVyGrOTsQrLCYzJ_G8Uk25Q;->f$0:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->createSession()Landroid/database/sqlite/SQLiteSession;

    move-result-object v0

    return-object v0
.end method
