.class public final Lmiui/provider/Recordings$Records$Columns;
.super Ljava/lang/Object;
.source "Recordings.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/Recordings$Records;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Columns"
.end annotation


# static fields
.field public static final CLOUD_SYNC_TIME:Ljava/lang/String; = "cloud_sync_time"

.field public static final CONTENT:Ljava/lang/String; = "content"

.field public static final CREATE_TIME:Ljava/lang/String; = "create_time"

.field public static final DB_SYNC_TIME:Ljava/lang/String; = "db_sync_time"

.field public static final DURATION:Ljava/lang/String; = "duration"

.field public static final FILE_ID:Ljava/lang/String; = "file_id"

.field public static final FILE_NAME:Ljava/lang/String; = "file_name"

.field public static final FILE_PATH:Ljava/lang/String; = "file_path"

.field public static final FILE_SIZE:Ljava/lang/String; = "file_size"

.field public static final IN_CLOUD:Ljava/lang/String; = "in_cloud"

.field public static final IN_LOCAL:Ljava/lang/String; = "in_local"

.field public static final REC_DESC:Ljava/lang/String; = "rec_desc"

.field public static final REC_TYPE:Ljava/lang/String; = "rec_type"

.field public static final SHA1:Ljava/lang/String; = "sha1"

.field public static final SYNC_DIRTY:Ljava/lang/String; = "sync_dirty"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
