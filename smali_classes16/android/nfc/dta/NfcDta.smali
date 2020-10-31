.class public final Landroid/nfc/dta/NfcDta;
.super Ljava/lang/Object;
.source "NfcDta.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NfcDta"

.field private static sNfcDtas:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/Context;",
            "Landroid/nfc/dta/NfcDta;",
            ">;"
        }
    .end annotation
.end field

.field private static sService:Landroid/nfc/INfcDta;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/nfc/dta/NfcDta;->sNfcDtas:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/nfc/INfcDta;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/nfc/dta/NfcDta;->mContext:Landroid/content/Context;

    sput-object p2, Landroid/nfc/dta/NfcDta;->sService:Landroid/nfc/INfcDta;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/nfc/NfcAdapter;)Landroid/nfc/dta/NfcDta;
    .registers 7

    const-class v0, Landroid/nfc/dta/NfcDta;

    monitor-enter v0

    if-eqz p0, :cond_45

    :try_start_5
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_36

    sget-object v2, Landroid/nfc/dta/NfcDta;->sNfcDtas:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/dta/NfcDta;

    if-nez v2, :cond_34

    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->getNfcDtaInterface()Landroid/nfc/INfcDta;

    move-result-object v3

    if-eqz v3, :cond_27

    new-instance v4, Landroid/nfc/dta/NfcDta;

    invoke-direct {v4, v1, v3}, Landroid/nfc/dta/NfcDta;-><init>(Landroid/content/Context;Landroid/nfc/INfcDta;)V

    move-object v2, v4

    sget-object v4, Landroid/nfc/dta/NfcDta;->sNfcDtas:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_34

    :cond_27
    const-string v4, "NfcDta"

    const-string v5, "This device does not implement the INfcDta interface."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v4}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v4
    :try_end_34
    .catchall {:try_start_5 .. :try_end_34} :catchall_43

    :cond_34
    :goto_34
    monitor-exit v0

    return-object v2

    :cond_36
    :try_start_36
    const-string v2, "NfcDta"

    const-string v3, "NfcAdapter context is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2

    :catchall_43
    move-exception p0

    goto :goto_4d

    :cond_45
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "NfcAdapter is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4d
    .catchall {:try_start_36 .. :try_end_4d} :catchall_43

    :goto_4d
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public disableClient()Z
    .registers 3

    :try_start_0
    sget-object v0, Landroid/nfc/dta/NfcDta;->sService:Landroid/nfc/INfcDta;

    invoke-interface {v0}, Landroid/nfc/INfcDta;->disableClient()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_8

    nop

    const/4 v0, 0x1

    return v0

    :catch_8
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public disableDta()Z
    .registers 3

    :try_start_0
    sget-object v0, Landroid/nfc/dta/NfcDta;->sService:Landroid/nfc/INfcDta;

    invoke-interface {v0}, Landroid/nfc/INfcDta;->disableDta()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_8

    nop

    const/4 v0, 0x1

    return v0

    :catch_8
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public disableServer()Z
    .registers 3

    :try_start_0
    sget-object v0, Landroid/nfc/dta/NfcDta;->sService:Landroid/nfc/INfcDta;

    invoke-interface {v0}, Landroid/nfc/INfcDta;->disableServer()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_8

    nop

    const/4 v0, 0x1

    return v0

    :catch_8
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public enableClient(Ljava/lang/String;III)Z
    .registers 7

    :try_start_0
    sget-object v0, Landroid/nfc/dta/NfcDta;->sService:Landroid/nfc/INfcDta;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/nfc/INfcDta;->enableClient(Ljava/lang/String;III)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    :catch_7
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public enableDta()Z
    .registers 3

    :try_start_0
    sget-object v0, Landroid/nfc/dta/NfcDta;->sService:Landroid/nfc/INfcDta;

    invoke-interface {v0}, Landroid/nfc/INfcDta;->enableDta()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_8

    nop

    const/4 v0, 0x1

    return v0

    :catch_8
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public enableServer(Ljava/lang/String;IIII)Z
    .registers 12

    :try_start_0
    sget-object v0, Landroid/nfc/dta/NfcDta;->sService:Landroid/nfc/INfcDta;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/nfc/INfcDta;->enableServer(Ljava/lang/String;IIII)Z

    move-result v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    return v0

    :catch_c
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public registerMessageService(Ljava/lang/String;)Z
    .registers 4

    :try_start_0
    sget-object v0, Landroid/nfc/dta/NfcDta;->sService:Landroid/nfc/INfcDta;

    invoke-interface {v0, p1}, Landroid/nfc/INfcDta;->registerMessageService(Ljava/lang/String;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    :catch_7
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method
