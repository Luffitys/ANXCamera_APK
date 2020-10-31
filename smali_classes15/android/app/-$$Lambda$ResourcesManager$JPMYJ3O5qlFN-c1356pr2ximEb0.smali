.class public final synthetic Landroid/app/-$$Lambda$ResourcesManager$JPMYJ3O5qlFN-c1356pr2ximEb0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/util/HashSet;


# direct methods
.method public synthetic constructor <init>(Ljava/util/HashSet;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/-$$Lambda$ResourcesManager$JPMYJ3O5qlFN-c1356pr2ximEb0;->f$0:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Landroid/app/-$$Lambda$ResourcesManager$JPMYJ3O5qlFN-c1356pr2ximEb0;->f$0:Ljava/util/HashSet;

    check-cast p1, Ljava/lang/ref/WeakReference;

    invoke-static {v0, p1}, Landroid/app/ResourcesManager;->lambda$cleanupReferences$0(Ljava/util/HashSet;Ljava/lang/ref/WeakReference;)Z

    move-result p1

    return p1
.end method
