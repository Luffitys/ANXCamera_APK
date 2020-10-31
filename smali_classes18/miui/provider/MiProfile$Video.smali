.class public Lmiui/provider/MiProfile$Video;
.super Ljava/lang/Object;
.source "MiProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/MiProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Video"
.end annotation


# static fields
.field public static final CONTACT_COLUMN:Ljava/lang/String; = "video"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.com.miui.cursor.item/profileVideo"

.field public static final DIGEST:Ljava/lang/String; = "data2"

.field public static final FILEPATH:Ljava/lang/String; = "data1"

.field public static final SYNC:Ljava/lang/String; = "data3"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
