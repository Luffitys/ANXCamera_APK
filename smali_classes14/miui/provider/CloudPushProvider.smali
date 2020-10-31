.class public abstract Lmiui/provider/CloudPushProvider;
.super Landroid/content/ContentProvider;
.source "CloudPushProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/provider/CloudPushProvider$Watermark;
    }
.end annotation


# static fields
.field public static final NAME_COLUMNS:Ljava/lang/String; = "name"

.field public static final NAME_COLUMNS_INDEX:I = 0x0

.field public static final PROJECTION:[Ljava/lang/String;

.field public static final TYPE_COLUMNS:Ljava/lang/String; = "type"

.field public static final TYPE_COLUMNS_INDEX:I = 0x2

.field public static final VALUE_COLUMNS:Ljava/lang/String; = "value"

.field public static final VALUE_COLUMNS_INDEX:I = 0x1

.field private static final WATERMARK_LIST:I = 0x1

.field private static final WATERMARK_LIST_PATH:Ljava/lang/String; = "watermark_list"


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "name"

    const-string v1, "value"

    const-string v2, "type"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/provider/CloudPushProvider;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private getWatermarkListCursor(Landroid/accounts/Account;)Landroid/database/MatrixCursor;
    .registers 10

    const/4 v0, 0x0

    if-eqz p1, :cond_3d

    new-instance v1, Landroid/database/MatrixCursor;

    sget-object v2, Lmiui/provider/CloudPushProvider;->PROJECTION:[Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v0, v1

    invoke-virtual {p0}, Lmiui/provider/CloudPushProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lmiui/provider/CloudPushProvider;->getWatermarkList(Landroid/content/Context;Landroid/accounts/Account;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/provider/CloudPushProvider$Watermark;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v3, Lmiui/provider/CloudPushProvider$Watermark;->mName:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-wide v6, v3, Lmiui/provider/CloudPushProvider$Watermark;->mValue:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-object v6, v3, Lmiui/provider/CloudPushProvider$Watermark;->mType:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v0, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_17

    :cond_3d
    return-object v0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract getAuthority()Ljava/lang/String;
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract getWatermarkList(Landroid/content/Context;Landroid/accounts/Account;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/accounts/Account;",
            ")",
            "Ljava/util/List<",
            "Lmiui/provider/CloudPushProvider$Watermark;",
            ">;"
        }
    .end annotation
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 4

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 11

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    invoke-virtual {p0}, Lmiui/provider/CloudPushProvider;->getAuthority()Ljava/lang/String;

    move-result-object v1

    const-string v2, "watermark_list"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0}, Lmiui/provider/CloudPushProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v1

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    if-ne v2, v3, :cond_23

    invoke-direct {p0, v1}, Lmiui/provider/CloudPushProvider;->getWatermarkListCursor(Landroid/accounts/Account;)Landroid/database/MatrixCursor;

    move-result-object v2

    return-object v2

    :cond_23
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown URI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6

    const/4 v0, 0x0

    return v0
.end method
