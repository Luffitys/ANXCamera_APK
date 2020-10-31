.class Landroid/content/pm/PackageManager$2;
.super Landroid/app/PropertyInvalidatedCache;
.source "PackageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/PropertyInvalidatedCache<",
        "Landroid/content/pm/PackageManager$PackageInfoQuery;",
        "Landroid/content/pm/PackageInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/app/PropertyInvalidatedCache;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected maybeCheckConsistency(Landroid/content/pm/PackageManager$PackageInfoQuery;Landroid/content/pm/PackageInfo;)Landroid/content/pm/PackageInfo;
    .registers 3

    return-object p2
.end method

.method protected bridge synthetic maybeCheckConsistency(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Landroid/content/pm/PackageManager$PackageInfoQuery;

    check-cast p2, Landroid/content/pm/PackageInfo;

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager$2;->maybeCheckConsistency(Landroid/content/pm/PackageManager$PackageInfoQuery;Landroid/content/pm/PackageInfo;)Landroid/content/pm/PackageInfo;

    move-result-object p1

    return-object p1
.end method

.method protected recompute(Landroid/content/pm/PackageManager$PackageInfoQuery;)Landroid/content/pm/PackageInfo;
    .registers 5

    iget-object v0, p1, Landroid/content/pm/PackageManager$PackageInfoQuery;->packageName:Ljava/lang/String;

    iget v1, p1, Landroid/content/pm/PackageManager$PackageInfoQuery;->flags:I

    iget v2, p1, Landroid/content/pm/PackageManager$PackageInfoQuery;->userId:I

    # invokes: Landroid/content/pm/PackageManager;->getPackageInfoAsUserUncached(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    invoke-static {v0, v1, v2}, Landroid/content/pm/PackageManager;->access$100(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic recompute(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Landroid/content/pm/PackageManager$PackageInfoQuery;

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager$2;->recompute(Landroid/content/pm/PackageManager$PackageInfoQuery;)Landroid/content/pm/PackageInfo;

    move-result-object p1

    return-object p1
.end method
