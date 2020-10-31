.class public Lmiui/provider/Recordings$Records;
.super Ljava/lang/Object;
.source "Recordings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/Recordings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Records"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/provider/Recordings$Records$InLocal;,
        Lmiui/provider/Recordings$Records$InCloud;,
        Lmiui/provider/Recordings$Records$SyncDirty;,
        Lmiui/provider/Recordings$Records$RecType;,
        Lmiui/provider/Recordings$Records$Columns;,
        Lmiui/provider/Recordings$Records$Order;
    }
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final TABLE_NAME:Ljava/lang/String; = "records"

.field public static final URI_PATH:Ljava/lang/String; = "records"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "content://records/records"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/Recordings$Records;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
