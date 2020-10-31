.class public final Lmiui/provider/Recordings$MarkPoints$Columns;
.super Ljava/lang/Object;
.source "Recordings.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/Recordings$MarkPoints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Columns"
.end annotation


# static fields
.field public static final DESCRIPTION:Ljava/lang/String; = "desp"

.field public static final E_TAG:Ljava/lang/String; = "e_tag"

.field public static final FILE_SHA1:Ljava/lang/String; = "file_sha1"

.field public static final PATH:Ljava/lang/String; = "path"

.field public static final RECORD_ID:Ljava/lang/String; = "record_id"

.field public static final SYNC_DIRTY:Ljava/lang/String; = "sync_dirty"

.field public static final TIME_POINT:Ljava/lang/String; = "time_point"

.field public static final TYPE:Ljava/lang/String; = "type"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
