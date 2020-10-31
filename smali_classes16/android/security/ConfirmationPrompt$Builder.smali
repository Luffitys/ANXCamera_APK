.class public final Landroid/security/ConfirmationPrompt$Builder;
.super Ljava/lang/Object;
.source "ConfirmationPrompt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/ConfirmationPrompt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mExtraData:[B

.field private mPromptText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/security/ConfirmationPrompt$Builder;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public build()Landroid/security/ConfirmationPrompt;
    .registers 6

    iget-object v0, p0, Landroid/security/ConfirmationPrompt$Builder;->mPromptText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Landroid/security/ConfirmationPrompt$Builder;->mExtraData:[B

    if-eqz v0, :cond_17

    new-instance v1, Landroid/security/ConfirmationPrompt;

    iget-object v2, p0, Landroid/security/ConfirmationPrompt$Builder;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/security/ConfirmationPrompt$Builder;->mPromptText:Ljava/lang/CharSequence;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v0, v4}, Landroid/security/ConfirmationPrompt;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;[BLandroid/security/ConfirmationPrompt$1;)V

    return-object v1

    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "extraData must be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "prompt text must be set and non-empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setExtraData([B)Landroid/security/ConfirmationPrompt$Builder;
    .registers 2

    iput-object p1, p0, Landroid/security/ConfirmationPrompt$Builder;->mExtraData:[B

    return-object p0
.end method

.method public setPromptText(Ljava/lang/CharSequence;)Landroid/security/ConfirmationPrompt$Builder;
    .registers 2

    iput-object p1, p0, Landroid/security/ConfirmationPrompt$Builder;->mPromptText:Ljava/lang/CharSequence;

    return-object p0
.end method
