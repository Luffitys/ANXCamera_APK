.class Landroid/content/pm/PackageHideManager$AppHideItem;
.super Ljava/lang/Object;
.source "PackageHideManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageHideManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AppHideItem"
.end annotation


# static fields
.field public static final PATH_DILIMITER:Ljava/lang/String; = ";"


# instance fields
.field isHide:Z

.field packageName:Ljava/lang/String;

.field pathArray:[Ljava/lang/String;


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;Z[Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/pm/PackageHideManager$AppHideItem;->packageName:Ljava/lang/String;

    iput-boolean p2, p0, Landroid/content/pm/PackageHideManager$AppHideItem;->isHide:Z

    iput-object p3, p0, Landroid/content/pm/PackageHideManager$AppHideItem;->pathArray:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getJoinPath()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Landroid/content/pm/PackageHideManager$AppHideItem;->pathArray:[Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    const-string v1, ";"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
