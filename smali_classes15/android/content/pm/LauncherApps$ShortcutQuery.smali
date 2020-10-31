.class public Landroid/content/pm/LauncherApps$ShortcutQuery;
.super Ljava/lang/Object;
.source "LauncherApps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/LauncherApps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShortcutQuery"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/LauncherApps$ShortcutQuery$QueryFlags;
    }
.end annotation


# static fields
.field public static final FLAG_GET_ALL_KINDS:I = 0x1b
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_GET_DYNAMIC:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_GET_KEY_FIELDS_ONLY:I = 0x4

.field public static final FLAG_GET_MANIFEST:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_GET_PINNED:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_MATCH_ALL_KINDS:I = 0x1b

.field public static final FLAG_MATCH_ALL_KINDS_WITH_ALL_PINNED:I = 0x41b

.field public static final FLAG_MATCH_CACHED:I = 0x10

.field public static final FLAG_MATCH_DYNAMIC:I = 0x1

.field public static final FLAG_MATCH_MANIFEST:I = 0x8

.field public static final FLAG_MATCH_PINNED:I = 0x2

.field public static final FLAG_MATCH_PINNED_BY_ANY_LAUNCHER:I = 0x400


# instance fields
.field mActivity:Landroid/content/ComponentName;

.field mChangedSince:J

.field mLocusIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/LocusId;",
            ">;"
        }
    .end annotation
.end field

.field mPackage:Ljava/lang/String;

.field mQueryFlags:I

.field mShortcutIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setActivity(Landroid/content/ComponentName;)Landroid/content/pm/LauncherApps$ShortcutQuery;
    .registers 2

    iput-object p1, p0, Landroid/content/pm/LauncherApps$ShortcutQuery;->mActivity:Landroid/content/ComponentName;

    return-object p0
.end method

.method public setChangedSince(J)Landroid/content/pm/LauncherApps$ShortcutQuery;
    .registers 3

    iput-wide p1, p0, Landroid/content/pm/LauncherApps$ShortcutQuery;->mChangedSince:J

    return-object p0
.end method

.method public setLocusIds(Ljava/util/List;)Landroid/content/pm/LauncherApps$ShortcutQuery;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/LocusId;",
            ">;)",
            "Landroid/content/pm/LauncherApps$ShortcutQuery;"
        }
    .end annotation

    iput-object p1, p0, Landroid/content/pm/LauncherApps$ShortcutQuery;->mLocusIds:Ljava/util/List;

    return-object p0
.end method

.method public setPackage(Ljava/lang/String;)Landroid/content/pm/LauncherApps$ShortcutQuery;
    .registers 2

    iput-object p1, p0, Landroid/content/pm/LauncherApps$ShortcutQuery;->mPackage:Ljava/lang/String;

    return-object p0
.end method

.method public setQueryFlags(I)Landroid/content/pm/LauncherApps$ShortcutQuery;
    .registers 2

    iput p1, p0, Landroid/content/pm/LauncherApps$ShortcutQuery;->mQueryFlags:I

    return-object p0
.end method

.method public setShortcutIds(Ljava/util/List;)Landroid/content/pm/LauncherApps$ShortcutQuery;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/pm/LauncherApps$ShortcutQuery;"
        }
    .end annotation

    iput-object p1, p0, Landroid/content/pm/LauncherApps$ShortcutQuery;->mShortcutIds:Ljava/util/List;

    return-object p0
.end method
