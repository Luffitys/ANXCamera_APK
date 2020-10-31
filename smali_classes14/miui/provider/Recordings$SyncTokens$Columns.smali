.class public final Lmiui/provider/Recordings$SyncTokens$Columns;
.super Ljava/lang/Object;
.source "Recordings.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/Recordings$SyncTokens;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Columns"
.end annotation


# static fields
.field public static final SYNC_EXTRA_INFO:Ljava/lang/String; = "sync_extra_info"

.field public static final SYNC_TOKEN:Ljava/lang/String; = "sync_token"

.field public static final SYNC_TOKEN_TYPE:Ljava/lang/String; = "sync_token_type"

.field public static final WATER_MARK:Ljava/lang/String; = "water_mark"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
