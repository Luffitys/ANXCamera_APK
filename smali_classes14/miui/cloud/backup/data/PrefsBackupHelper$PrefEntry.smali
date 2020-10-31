.class public Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;
.super Ljava/lang/Object;
.source "PrefsBackupHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/cloud/backup/data/PrefsBackupHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PrefEntry"
.end annotation


# instance fields
.field private mCloudKey:Ljava/lang/String;

.field private mDefaultValue:Ljava/lang/Object;

.field private mLocalKey:Ljava/lang/String;

.field private mValueClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->mCloudKey:Ljava/lang/String;

    iput-object p2, p0, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->mLocalKey:Ljava/lang/String;

    iput-object p3, p0, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->mValueClass:Ljava/lang/Class;

    iput-object p4, p0, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->mDefaultValue:Ljava/lang/Object;

    return-void
.end method

.method public static createBoolEntry(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;
    .registers 5

    new-instance v0, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    const-class v1, Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static createBoolEntry(Ljava/lang/String;Ljava/lang/String;Z)Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;
    .registers 6

    new-instance v0, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    const-class v1, Ljava/lang/Boolean;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, p0, p1, v1, v2}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static createIntEntry(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;
    .registers 5

    new-instance v0, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    const-class v1, Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static createIntEntry(Ljava/lang/String;Ljava/lang/String;I)Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;
    .registers 6

    new-instance v0, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    const-class v1, Ljava/lang/Integer;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, p0, p1, v1, v2}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static createLongEntry(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;
    .registers 5

    new-instance v0, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    const-class v1, Ljava/lang/Long;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static createLongEntry(Ljava/lang/String;Ljava/lang/String;J)Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;
    .registers 7

    new-instance v0, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    const-class v1, Ljava/lang/Long;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, p0, p1, v1, v2}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;
    .registers 5

    new-instance v0, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    const-class v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static createStringEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;
    .registers 5

    new-instance v0, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    const-class v1, Ljava/lang/String;

    invoke-direct {v0, p0, p1, v1, p2}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public getCloudKey()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->mCloudKey:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultValue()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->mDefaultValue:Ljava/lang/Object;

    return-object v0
.end method

.method public getLocalKey()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->mLocalKey:Ljava/lang/String;

    return-object v0
.end method

.method public getValueClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->mValueClass:Ljava/lang/Class;

    return-object v0
.end method
