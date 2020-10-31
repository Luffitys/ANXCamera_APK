.class public Lmiui/app/RemoveDuplicateContacts$MergeContacts;
.super Ljava/lang/Object;
.source "RemoveDuplicateContacts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/RemoveDuplicateContacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MergeContacts"
.end annotation


# instance fields
.field private mChecked:Z

.field private mContacts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiui/app/RemoveDuplicateContacts$ContactsInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lmiui/app/RemoveDuplicateContacts$ContactsInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/app/RemoveDuplicateContacts$MergeContacts;->mContacts:Ljava/util/ArrayList;

    iput-object p2, p0, Lmiui/app/RemoveDuplicateContacts$MergeContacts;->mName:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/app/RemoveDuplicateContacts$MergeContacts;->mChecked:Z

    return-void
.end method


# virtual methods
.method public getContacts()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lmiui/app/RemoveDuplicateContacts$ContactsInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lmiui/app/RemoveDuplicateContacts$MergeContacts;->mContacts:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/app/RemoveDuplicateContacts$MergeContacts;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public isChecked()Z
    .registers 2

    iget-boolean v0, p0, Lmiui/app/RemoveDuplicateContacts$MergeContacts;->mChecked:Z

    return v0
.end method

.method public setChecked(Z)V
    .registers 2

    iput-boolean p1, p0, Lmiui/app/RemoveDuplicateContacts$MergeContacts;->mChecked:Z

    return-void
.end method
