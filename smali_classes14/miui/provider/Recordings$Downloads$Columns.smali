.class public final Lmiui/provider/Recordings$Downloads$Columns;
.super Ljava/lang/Object;
.source "Recordings.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/Recordings$Downloads;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Columns"
.end annotation


# static fields
.field public static final FILE_ID:Ljava/lang/String; = "file_id"

.field public static final FILE_NAME:Ljava/lang/String; = "file_name"

.field public static final FILE_PATH:Ljava/lang/String; = "file_path"

.field public static final FILE_SIZE:Ljava/lang/String; = "file_size"

.field public static final PROGRESS:Ljava/lang/String; = "progress"

.field public static final REC_ID:Ljava/lang/String; = "rec_id"

.field public static final STATUS:Ljava/lang/String; = "status"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
