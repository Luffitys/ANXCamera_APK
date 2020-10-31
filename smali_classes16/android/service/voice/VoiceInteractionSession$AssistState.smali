.class public final Landroid/service/voice/VoiceInteractionSession$AssistState;
.super Ljava/lang/Object;
.source "VoiceInteractionSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/VoiceInteractionSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AssistState"
.end annotation


# instance fields
.field private final mActivityId:Landroid/service/voice/VoiceInteractionSession$ActivityId;

.field private final mContent:Landroid/app/assist/AssistContent;

.field private final mCount:I

.field private final mData:Landroid/os/Bundle;

.field private final mIndex:I

.field private final mStructure:Landroid/app/assist/AssistStructure;


# direct methods
.method constructor <init>(Landroid/service/voice/VoiceInteractionSession$ActivityId;Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;II)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/voice/VoiceInteractionSession$AssistState;->mActivityId:Landroid/service/voice/VoiceInteractionSession$ActivityId;

    iput p5, p0, Landroid/service/voice/VoiceInteractionSession$AssistState;->mIndex:I

    iput p6, p0, Landroid/service/voice/VoiceInteractionSession$AssistState;->mCount:I

    iput-object p2, p0, Landroid/service/voice/VoiceInteractionSession$AssistState;->mData:Landroid/os/Bundle;

    iput-object p3, p0, Landroid/service/voice/VoiceInteractionSession$AssistState;->mStructure:Landroid/app/assist/AssistStructure;

    iput-object p4, p0, Landroid/service/voice/VoiceInteractionSession$AssistState;->mContent:Landroid/app/assist/AssistContent;

    return-void
.end method


# virtual methods
.method public getActivityId()Landroid/service/voice/VoiceInteractionSession$ActivityId;
    .registers 2

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$AssistState;->mActivityId:Landroid/service/voice/VoiceInteractionSession$ActivityId;

    return-object v0
.end method

.method public getAssistContent()Landroid/app/assist/AssistContent;
    .registers 2

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$AssistState;->mContent:Landroid/app/assist/AssistContent;

    return-object v0
.end method

.method public getAssistData()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$AssistState;->mData:Landroid/os/Bundle;

    return-object v0
.end method

.method public getAssistStructure()Landroid/app/assist/AssistStructure;
    .registers 2

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$AssistState;->mStructure:Landroid/app/assist/AssistStructure;

    return-object v0
.end method

.method public getCount()I
    .registers 2

    iget v0, p0, Landroid/service/voice/VoiceInteractionSession$AssistState;->mCount:I

    return v0
.end method

.method public getIndex()I
    .registers 2

    iget v0, p0, Landroid/service/voice/VoiceInteractionSession$AssistState;->mIndex:I

    return v0
.end method

.method public isFocused()Z
    .registers 2

    iget v0, p0, Landroid/service/voice/VoiceInteractionSession$AssistState;->mIndex:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method
