.class public Lcom/motorola/android/internal/telephony/ApnSyncedToBP;
.super Ljava/lang/Object;
.source "ApnSyncedToBP.java"


# static fields
.field protected static final DBG:Z

.field protected static final LOG_TAG:Ljava/lang/String; = "GSM"

.field public static final SYS_PROP_FIRSTUP_AFTER_FR:Ljava/lang/String; = "persist.radio.firstupafterfr"

.field protected static final mMaxClass:I = 0x6


# instance fields
.field protected mApnNum3GPP:I

.field protected mApnNum3GPP2:I

.field protected mCachedApns3GPP:[Lcom/android/internal/telephony/dataconnection/ApnSetting;

.field protected mCachedApns3GPP2:[Lcom/android/internal/telephony/dataconnection/ApnSetting;

.field protected mIsChangedApns3GPP:Z

.field protected mIsChangedApns3GPP2:Z

.field private mLTESupportForSprint:Z

.field private mMMSCForSprint:Ljava/lang/String;

.field private mMmsPortForSprint:Ljava/lang/String;

.field private mMmsProxyForSprint:Ljava/lang/String;

.field protected mPhone:Lcom/android/internal/telephony/PhoneBase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->DBG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Ljava/util/ArrayList;)V
    .locals 4
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/PhoneBase;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/DataProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "allApns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/DataProfile;>;"
    const/4 v2, 0x6

    const/4 v3, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-boolean v3, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mIsChangedApns3GPP:Z

    .line 51
    iput-boolean v3, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mIsChangedApns3GPP2:Z

    .line 52
    iput v3, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mApnNum3GPP:I

    .line 53
    iput v3, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mApnNum3GPP2:I

    .line 56
    iput-boolean v3, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mLTESupportForSprint:Z

    .line 57
    const-string v1, "68.28.31.7"

    iput-object v1, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mMmsProxyForSprint:Ljava/lang/String;

    .line 58
    const-string v1, "80"

    iput-object v1, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mMmsPortForSprint:Ljava/lang/String;

    .line 59
    const-string v1, "http://mms.sprintpcs.com"

    iput-object v1, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mMMSCForSprint:Ljava/lang/String;

    .line 63
    new-array v1, v2, [Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iput-object v1, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mCachedApns3GPP:[Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 64
    new-array v1, v2, [Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iput-object v1, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mCachedApns3GPP2:[Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 65
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 66
    invoke-direct {p0, p2}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->cacheApnListFromAp(Ljava/util/ArrayList;)V

    .line 67
    sget-boolean v1, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new ApnSyncedToBP, with allApns:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    .line 72
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110096

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mLTESupportForSprint:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/Exception;
    iput-boolean v3, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mLTESupportForSprint:Z

    goto :goto_0
.end method

.method private cacheApnListFromAp(Ljava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/DataProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "allApns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/DataProfile;>;"
    const/16 v12, 0xe

    const/16 v11, 0xd

    const/4 v10, 0x6

    const/4 v9, 0x1

    .line 81
    sget-boolean v6, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->DBG:Z

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cacheApnListFromAp, with allApns:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    .line 82
    :cond_0
    if-eqz p1, :cond_12

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_12

    .line 83
    const/4 v1, 0x0

    .line 84
    .local v1, "curApnNum3GPP":I
    const/4 v2, 0x0

    .line 85
    .local v2, "curApnNum3GPP2":I
    new-array v3, v10, [Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 86
    .local v3, "currentApns3GPP":[Lcom/android/internal/telephony/dataconnection/ApnSetting;
    new-array v4, v10, [Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 87
    .local v4, "currentApns3GPP2":[Lcom/android/internal/telephony/dataconnection/ApnSetting;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DataProfile;

    .local v0, "apn":Lcom/android/internal/telephony/dataconnection/DataProfile;
    move-object v6, v0

    .line 88
    check-cast v6, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget v6, v6, Lcom/android/internal/telephony/dataconnection/DataProfile;->apnClass:I

    if-ge v6, v10, :cond_1

    move-object v6, v0

    check-cast v6, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget v6, v6, Lcom/android/internal/telephony/dataconnection/DataProfile;->apnClass:I

    if-lez v6, :cond_1

    move-object v6, v0

    .line 89
    check-cast v6, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget v6, v6, Lcom/android/internal/telephony/dataconnection/DataProfile;->bearer:I

    if-eq v6, v12, :cond_2

    move-object v6, v0

    check-cast v6, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v6, v6, Lcom/android/internal/telephony/dataconnection/DataProfile;->bearers:Ljava/util/ArrayList;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    move-object v6, v0

    check-cast v6, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget v6, v6, Lcom/android/internal/telephony/dataconnection/DataProfile;->bearer:I

    if-nez v6, :cond_7

    move-object v6, v0

    check-cast v6, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v6, v6, Lcom/android/internal/telephony/dataconnection/DataProfile;->bearers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 93
    :cond_2
    iget-object v7, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mCachedApns3GPP:[Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-object v6, v0

    check-cast v6, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget v6, v6, Lcom/android/internal/telephony/dataconnection/DataProfile;->apnClass:I

    aget-object v6, v7, v6

    if-eqz v6, :cond_3

    iget-object v7, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mCachedApns3GPP:[Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-object v6, v0

    check-cast v6, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget v6, v6, Lcom/android/internal/telephony/dataconnection/DataProfile;->apnClass:I

    aget-object v7, v7, v6

    move-object v6, v0

    check-cast v6, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    invoke-virtual {v7, v6}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->equals2(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 96
    :cond_3
    sget-boolean v6, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->DBG:Z

    if-eqz v6, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Apns3GPP changed, old:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mCachedApns3GPP:[Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-object v6, v0

    check-cast v6, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget v6, v6, Lcom/android/internal/telephony/dataconnection/DataProfile;->apnClass:I

    aget-object v6, v8, v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", new:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v6, v0

    check-cast v6, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    .line 99
    :cond_4
    iput-boolean v9, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mIsChangedApns3GPP:Z

    .line 101
    :cond_5
    sget-boolean v6, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->DBG:Z

    if-eqz v6, :cond_6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "3gpp apn new:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v6, v0

    check-cast v6, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    :cond_6
    move-object v6, v0

    .line 102
    check-cast v6, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget v7, v6, Lcom/android/internal/telephony/dataconnection/DataProfile;->apnClass:I

    move-object v6, v0

    check-cast v6, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    aput-object v6, v3, v7

    .line 103
    add-int/lit8 v1, v1, 0x1

    :cond_7
    move-object v6, v0

    .line 105
    check-cast v6, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget v6, v6, Lcom/android/internal/telephony/dataconnection/DataProfile;->bearer:I

    if-eq v6, v11, :cond_8

    move-object v6, v0

    check-cast v6, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v6, v6, Lcom/android/internal/telephony/dataconnection/DataProfile;->bearers:Ljava/util/ArrayList;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    move-object v6, v0

    check-cast v6, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget v6, v6, Lcom/android/internal/telephony/dataconnection/DataProfile;->bearer:I

    if-nez v6, :cond_1

    move-object v6, v0

    check-cast v6, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v6, v6, Lcom/android/internal/telephony/dataconnection/DataProfile;->bearers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 109
    :cond_8
    iget-object v7, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mCachedApns3GPP2:[Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-object v6, v0

    check-cast v6, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget v6, v6, Lcom/android/internal/telephony/dataconnection/DataProfile;->apnClass:I

    aget-object v6, v7, v6

    if-eqz v6, :cond_9

    iget-object v7, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mCachedApns3GPP2:[Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-object v6, v0

    check-cast v6, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget v6, v6, Lcom/android/internal/telephony/dataconnection/DataProfile;->apnClass:I

    aget-object v7, v7, v6

    move-object v6, v0

    check-cast v6, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    invoke-virtual {v7, v6}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->equals2(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 112
    :cond_9
    sget-boolean v6, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->DBG:Z

    if-eqz v6, :cond_a

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Apns3GPP2 changed, old:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mCachedApns3GPP:[Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-object v6, v0

    check-cast v6, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget v6, v6, Lcom/android/internal/telephony/dataconnection/DataProfile;->apnClass:I

    aget-object v6, v8, v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", new:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v6, v0

    check-cast v6, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    .line 115
    :cond_a
    iput-boolean v9, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mIsChangedApns3GPP2:Z

    .line 117
    :cond_b
    sget-boolean v6, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->DBG:Z

    if-eqz v6, :cond_c

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "3gpp2 apn new:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v6, v0

    check-cast v6, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    :cond_c
    move-object v6, v0

    .line 118
    check-cast v6, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget v6, v6, Lcom/android/internal/telephony/dataconnection/DataProfile;->apnClass:I

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .end local v0    # "apn":Lcom/android/internal/telephony/dataconnection/DataProfile;
    aput-object v0, v4, v6

    .line 119
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 124
    :cond_d
    iget v6, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mApnNum3GPP:I

    if-eq v1, v6, :cond_e

    .line 125
    iput v1, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mApnNum3GPP:I

    .line 126
    iput-boolean v9, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mIsChangedApns3GPP:Z

    .line 128
    :cond_e
    iget v6, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mApnNum3GPP2:I

    if-eq v2, v6, :cond_f

    .line 129
    iput v2, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mApnNum3GPP2:I

    .line 130
    iput-boolean v9, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mIsChangedApns3GPP2:Z

    .line 132
    :cond_f
    sget-boolean v6, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->DBG:Z

    if-eqz v6, :cond_10

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mApnNum3GPP:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mApnNum3GPP:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",mApnNum3GPP2:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mApnNum3GPP2:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "curApnNum3GPP:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",curApnNum3GPP2:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "mIsChangedApns3GPP:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mIsChangedApns3GPP:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "mIsChangedApns3GPP2:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mIsChangedApns3GPP2:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    .line 136
    :cond_10
    iget-boolean v6, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mIsChangedApns3GPP:Z

    if-eqz v6, :cond_11

    iput-object v3, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mCachedApns3GPP:[Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 137
    :cond_11
    iget-boolean v6, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mIsChangedApns3GPP2:Z

    if-eqz v6, :cond_12

    iput-object v4, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mCachedApns3GPP2:[Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 139
    .end local v1    # "curApnNum3GPP":I
    .end local v2    # "curApnNum3GPP2":I
    .end local v3    # "currentApns3GPP":[Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .end local v4    # "currentApns3GPP2":[Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_12
    return-void
.end method

.method private getApnType(I)Ljava/lang/String;
    .locals 1
    .param p1, "apnClass"    # I

    .prologue
    .line 535
    packed-switch p1, :pswitch_data_0

    .line 545
    const-string v0, "internet,mms"

    .line 549
    .local v0, "retStr":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 537
    .end local v0    # "retStr":Ljava/lang/String;
    :pswitch_0
    const-string v0, "ota"

    .line 538
    .restart local v0    # "retStr":Ljava/lang/String;
    goto :goto_0

    .line 540
    .end local v0    # "retStr":Ljava/lang/String;
    :pswitch_1
    const-string v0, "pam"

    .line 541
    .restart local v0    # "retStr":Ljava/lang/String;
    goto :goto_0

    .line 535
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getIPType(Lcom/android/internal/telephony/dataconnection/ApnSetting;)I
    .locals 5
    .param p1, "apn"    # Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .prologue
    .line 154
    const/4 v3, 0x0

    .line 156
    .local v3, "result":I
    const/4 v2, 0x0

    .line 158
    .local v2, "isRoaming":Z
    :try_start_0
    iget-object v4, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getDataRoaming()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 162
    :goto_0
    if-eqz v2, :cond_1

    iget-object v1, p1, Lcom/android/internal/telephony/dataconnection/DataProfile;->roamingProtocol:Ljava/lang/String;

    .line 163
    .local v1, "ipType":Ljava/lang/String;
    :goto_1
    const-string v4, "IP"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 164
    const/4 v3, 0x0

    .line 170
    :cond_0
    :goto_2
    return v3

    .line 159
    .end local v1    # "ipType":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "exception in mPhone.getServiceState().getDataRoaming()"

    invoke-static {v4}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 162
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v1, p1, Lcom/android/internal/telephony/dataconnection/DataProfile;->protocol:Ljava/lang/String;

    goto :goto_1

    .line 165
    .restart local v1    # "ipType":Ljava/lang/String;
    :cond_2
    const-string v4, "IPV6"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 166
    const/4 v3, 0x1

    goto :goto_2

    .line 167
    :cond_3
    const-string v4, "IPV4V6"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 168
    const/4 v3, 0x2

    goto :goto_2
.end method

.method private getProtocol(I)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 554
    packed-switch p1, :pswitch_data_0

    .line 562
    const-string v0, "IPV4V6"

    .line 565
    .local v0, "retStr":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 556
    .end local v0    # "retStr":Ljava/lang/String;
    :pswitch_0
    const-string v0, "IP"

    .line 557
    .restart local v0    # "retStr":Ljava/lang/String;
    goto :goto_0

    .line 559
    .end local v0    # "retStr":Ljava/lang/String;
    :pswitch_1
    const-string v0, "IPV6"

    .line 560
    .restart local v0    # "retStr":Ljava/lang/String;
    goto :goto_0

    .line 554
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private insertApnTable([Lcom/motorola/android/internal/telephony/ApnInfo;Ljava/lang/String;Z)V
    .locals 9
    .param p1, "bpApnList"    # [Lcom/motorola/android/internal/telephony/ApnInfo;
    .param p2, "currentNumeric"    # Ljava/lang/String;
    .param p3, "is3GPP2"    # Z

    .prologue
    const/4 v8, 0x3

    .line 496
    if-eqz p1, :cond_0

    array-length v6, p1

    if-nez v6, :cond_1

    .line 531
    :cond_0
    return-void

    .line 498
    :cond_1
    iget-object v6, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 500
    .local v4, "resolver":Landroid/content/ContentResolver;
    move-object v1, p1

    .local v1, "arr$":[Lcom/motorola/android/internal/telephony/ApnInfo;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 502
    .local v0, "apnInfo":Lcom/motorola/android/internal/telephony/ApnInfo;
    iget-object v6, v0, Lcom/motorola/android/internal/telephony/ApnInfo;->apn:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_3

    .line 500
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 504
    :cond_3
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 505
    .local v5, "values":Landroid/content/ContentValues;
    const-string v6, "type"

    iget v7, v0, Lcom/motorola/android/internal/telephony/ApnInfo;->apn_class:I

    invoke-direct {p0, v7}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->getApnType(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    const-string v6, "class"

    iget v7, v0, Lcom/motorola/android/internal/telephony/ApnInfo;->apn_class:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 507
    const-string v6, "protocol"

    iget v7, v0, Lcom/motorola/android/internal/telephony/ApnInfo;->ip_type:I

    invoke-direct {p0, v7}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->getProtocol(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    const-string v6, "carrier_enabled"

    iget-boolean v7, v0, Lcom/motorola/android/internal/telephony/ApnInfo;->enabled:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 509
    const-string v6, "authtype"

    iget v7, v0, Lcom/motorola/android/internal/telephony/ApnInfo;->auth_type:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 510
    const-string v6, "user"

    iget-object v7, v0, Lcom/motorola/android/internal/telephony/ApnInfo;->username:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    const-string v6, "password"

    iget-object v7, v0, Lcom/motorola/android/internal/telephony/ApnInfo;->password:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    const-string v6, "numeric"

    invoke-virtual {v5, v6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    const-string v6, "mcc"

    const/4 v7, 0x0

    invoke-virtual {p2, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    const-string v6, "mnc"

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p2, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    const-string v6, "roaming_protocol"

    iget v7, v0, Lcom/motorola/android/internal/telephony/ApnInfo;->ip_type:I

    invoke-direct {p0, v7}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->getProtocol(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    const-string v6, "apn"

    iget-object v7, v0, Lcom/motorola/android/internal/telephony/ApnInfo;->apn:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    const-string v6, "name"

    iget-object v7, v0, Lcom/motorola/android/internal/telephony/ApnInfo;->apn:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    const-string v7, "bearer"

    if-eqz p3, :cond_4

    const-string v6, "13"

    :goto_2
    invoke-virtual {v5, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    const-string v6, "preloaded"

    const-string v7, "true"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    const-string v6, "mmsproxy"

    iget-object v7, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mMmsProxyForSprint:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    const-string v6, "mmsport"

    iget-object v7, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mMmsPortForSprint:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    const-string v6, "mmsc"

    iget-object v7, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mMMSCForSprint:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    sget-object v6, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 528
    sget-boolean v6, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->DBG:Z

    if-eqz v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "maybeUpdateApnListFromBP:insert data to table carriers, with values ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 519
    :cond_4
    const-string v6, "14"

    goto :goto_2
.end method

.method protected static log(Ljava/lang/String;)V
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 570
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GsmDCT] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    return-void
.end method

.method private mvnoMatches(Lcom/android/internal/telephony/uicc/IccRecords;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "r"    # Lcom/android/internal/telephony/uicc/IccRecords;
    .param p2, "mvno_type"    # Ljava/lang/String;
    .param p3, "mvno_match_data"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 374
    if-nez p1, :cond_1

    .line 395
    :cond_0
    :goto_0
    return v3

    .line 377
    :cond_1
    const-string v5, "spn"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 378
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v4

    .line 380
    goto :goto_0

    .line 382
    :cond_2
    const-string v5, "imsi"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 383
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v1

    .line 384
    .local v1, "imsiSIM":Ljava/lang/String;
    if-eqz v1, :cond_0

    iget-object v5, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5, p3, v1}, Lcom/android/internal/telephony/PhoneBase;->imsiMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v4

    .line 385
    goto :goto_0

    .line 387
    .end local v1    # "imsiSIM":Ljava/lang/String;
    :cond_3
    const-string v5, "gid"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 388
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/IccRecords;->getGid1()Ljava/lang/String;

    move-result-object v0

    .line 389
    .local v0, "gid1":Ljava/lang/String;
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    .line 390
    .local v2, "mvno_match_data_length":I
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v2, :cond_0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v4

    .line 392
    goto :goto_0
.end method

.method public static syncPreferredApnSetting(ILcom/android/internal/telephony/dataconnection/ApnSetting;)V
    .locals 14
    .param p0, "bearer"    # I
    .param p1, "preferredApn"    # Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .prologue
    const/4 v7, -0x1

    const/4 v2, 0x1

    .line 438
    const/4 v11, 0x0

    .line 439
    .local v11, "ratType":I
    packed-switch p0, :pswitch_data_0

    .line 450
    :pswitch_0
    const/4 v1, 0x0

    .line 453
    .local v1, "profileType":I
    :goto_0
    if-ne v1, v2, :cond_3

    .line 454
    const/4 v11, 0x3

    .line 458
    :goto_1
    const/4 v5, 0x0

    .line 459
    .local v5, "ipType":I
    iget-object v3, p1, Lcom/android/internal/telephony/dataconnection/DataProfile;->protocol:Ljava/lang/String;

    const-string v4, "IP"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 460
    const/4 v5, 0x0

    .line 466
    :cond_0
    :goto_2
    new-instance v12, Lcom/motorola/android/internal/telephony/ApnJni;

    invoke-direct {v12}, Lcom/motorola/android/internal/telephony/ApnJni;-><init>()V

    .line 467
    .local v12, "apnJniIntf":Lcom/motorola/android/internal/telephony/ApnJni;
    new-instance v0, Lcom/motorola/android/internal/telephony/ApnInfo;

    iget v3, p1, Lcom/android/internal/telephony/dataconnection/DataProfile;->apnClass:I

    iget-object v4, p1, Lcom/android/internal/telephony/dataconnection/DataProfile;->apn:Ljava/lang/String;

    iget-boolean v6, p1, Lcom/android/internal/telephony/dataconnection/DataProfile;->carrierEnabled:Z

    iget v8, p1, Lcom/android/internal/telephony/dataconnection/DataProfile;->authType:I

    iget-object v9, p1, Lcom/android/internal/telephony/dataconnection/DataProfile;->user:Ljava/lang/String;

    iget-object v10, p1, Lcom/android/internal/telephony/dataconnection/DataProfile;->password:Ljava/lang/String;

    invoke-direct/range {v0 .. v11}, Lcom/motorola/android/internal/telephony/ApnInfo;-><init>(IIILjava/lang/String;IZIILjava/lang/String;Ljava/lang/String;I)V

    .line 480
    .local v0, "apnInfo":Lcom/motorola/android/internal/telephony/ApnInfo;
    iget v3, p1, Lcom/android/internal/telephony/dataconnection/DataProfile;->maxConns:I

    iput v3, v0, Lcom/motorola/android/internal/telephony/ApnInfo;->max_conn:I

    .line 481
    iget v3, p1, Lcom/android/internal/telephony/dataconnection/DataProfile;->maxConns_t:I

    iput v3, v0, Lcom/motorola/android/internal/telephony/ApnInfo;->max_conn_t:I

    .line 482
    iget v3, p1, Lcom/android/internal/telephony/dataconnection/DataProfile;->waitTime:I

    iput v3, v0, Lcom/motorola/android/internal/telephony/ApnInfo;->wait_time:I

    .line 484
    sget-boolean v3, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->DBG:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update preferred apn,apninfo is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    .line 485
    :cond_1
    invoke-static {v2, v1, v0}, Lcom/motorola/android/internal/telephony/ApnJni;->setApn(IILcom/motorola/android/internal/telephony/ApnInfo;)I

    move-result v13

    .line 486
    .local v13, "ret":I
    if-ne v13, v7, :cond_6

    .line 487
    sget-boolean v2, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->DBG:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update preferred apn to BP fail,apninfo is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    .line 491
    :cond_2
    :goto_3
    return-void

    .line 447
    .end local v0    # "apnInfo":Lcom/motorola/android/internal/telephony/ApnInfo;
    .end local v1    # "profileType":I
    .end local v5    # "ipType":I
    .end local v12    # "apnJniIntf":Lcom/motorola/android/internal/telephony/ApnJni;
    .end local v13    # "ret":I
    :pswitch_1
    const/4 v1, 0x1

    .line 448
    .restart local v1    # "profileType":I
    goto :goto_0

    .line 456
    :cond_3
    const/4 v11, 0x0

    goto :goto_1

    .line 461
    .restart local v5    # "ipType":I
    :cond_4
    iget-object v3, p1, Lcom/android/internal/telephony/dataconnection/DataProfile;->protocol:Ljava/lang/String;

    const-string v4, "IPV6"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 462
    const/4 v5, 0x1

    goto :goto_2

    .line 463
    :cond_5
    iget-object v3, p1, Lcom/android/internal/telephony/dataconnection/DataProfile;->protocol:Ljava/lang/String;

    const-string v4, "IPV4V6"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 464
    const/4 v5, 0x2

    goto :goto_2

    .line 489
    .restart local v0    # "apnInfo":Lcom/motorola/android/internal/telephony/ApnInfo;
    .restart local v12    # "apnJniIntf":Lcom/motorola/android/internal/telephony/ApnJni;
    .restart local v13    # "ret":I
    :cond_6
    sget-boolean v2, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->DBG:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update preferred apn to BP succeed,apninfo is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 439
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private updateApnListToBp(I[Lcom/android/internal/telephony/dataconnection/ApnSetting;)V
    .locals 24
    .param p1, "profileType"    # I
    .param p2, "cachedApns"    # [Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .prologue
    .line 174
    sget-boolean v3, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->DBG:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "need update BP apn list for profileType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    .line 175
    :cond_0
    const/4 v13, 0x0

    .line 176
    .local v13, "ratType":I
    const/4 v3, 0x6

    new-array v15, v3, [Lcom/motorola/android/internal/telephony/ApnInfo;

    .line 177
    .local v15, "apnInfoList":[Lcom/motorola/android/internal/telephony/ApnInfo;
    sget-boolean v3, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "updateBPApnList:prepare to get list from BP"

    invoke-static {v3}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    .line 178
    :cond_1
    new-instance v16, Lcom/motorola/android/internal/telephony/ApnJni;

    invoke-direct/range {v16 .. v16}, Lcom/motorola/android/internal/telephony/ApnJni;-><init>()V

    .line 179
    .local v16, "apnJniIntf":Lcom/motorola/android/internal/telephony/ApnJni;
    sget-boolean v3, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->DBG:Z

    if-eqz v3, :cond_2

    const-string v3, "updateBPApnList:new apnjni ok"

    invoke-static {v3}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    .line 180
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/motorola/android/internal/telephony/ApnJni;->listApns(I)[Lcom/motorola/android/internal/telephony/ApnInfo;

    move-result-object v19

    .line 181
    .local v19, "bpApnsList":[Lcom/motorola/android/internal/telephony/ApnInfo;
    sget-boolean v3, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->DBG:Z

    if-eqz v3, :cond_3

    const-string v3, "updateBPApnList:has gotten list from BP"

    invoke-static {v3}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    .line 183
    :cond_3
    if-eqz v19, :cond_7

    move-object/from16 v0, v19

    array-length v3, v0

    if-eqz v3, :cond_7

    .line 184
    sget-boolean v3, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->DBG:Z

    if-eqz v3, :cond_4

    const-string v3, "updateBPApnList:get list from BP"

    invoke-static {v3}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    .line 185
    :cond_4
    move-object/from16 v17, v19

    .local v17, "arr$":[Lcom/motorola/android/internal/telephony/ApnInfo;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v22, v0

    .local v22, "len$":I
    const/16 v21, 0x0

    .local v21, "i$":I
    :goto_0
    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_8

    aget-object v18, v17, v21

    .line 186
    .local v18, "bpApnInfo":Lcom/motorola/android/internal/telephony/ApnInfo;
    sget-boolean v3, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->DBG:Z

    if-eqz v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateBPApnList:get apninfo "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    .line 188
    :cond_5
    move-object/from16 v0, v18

    iget v3, v0, Lcom/motorola/android/internal/telephony/ApnInfo;->apn_class:I

    if-lez v3, :cond_6

    move-object/from16 v0, v18

    iget v3, v0, Lcom/motorola/android/internal/telephony/ApnInfo;->apn_class:I

    const/4 v4, 0x6

    if-ge v3, v4, :cond_6

    .line 192
    move-object/from16 v0, v18

    iget v3, v0, Lcom/motorola/android/internal/telephony/ApnInfo;->apn_class:I

    aget-object v3, v15, v3

    if-nez v3, :cond_6

    .line 193
    move-object/from16 v0, v18

    iget v3, v0, Lcom/motorola/android/internal/telephony/ApnInfo;->apn_class:I

    aput-object v18, v15, v3

    .line 185
    :cond_6
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    .line 198
    .end local v17    # "arr$":[Lcom/motorola/android/internal/telephony/ApnInfo;
    .end local v18    # "bpApnInfo":Lcom/motorola/android/internal/telephony/ApnInfo;
    .end local v21    # "i$":I
    .end local v22    # "len$":I
    :cond_7
    sget-boolean v3, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->DBG:Z

    if-eqz v3, :cond_8

    const-string v3, "updateBPApnList:can not get list from BP"

    invoke-static {v3}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    .line 201
    :cond_8
    const/16 v20, 0x1

    .local v20, "i":I
    :goto_1
    move-object/from16 v0, p2

    array-length v3, v0

    move/from16 v0, v20

    if-ge v0, v3, :cond_13

    .line 202
    aget-object v14, p2, v20

    .line 203
    .local v14, "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    if-nez v14, :cond_b

    .line 205
    aget-object v3, v15, v20

    if-eqz v3, :cond_9

    .line 206
    aget-object v3, v15, v20

    iget v3, v3, Lcom/motorola/android/internal/telephony/ApnInfo;->index:I

    move/from16 v0, p1

    invoke-static {v3, v0}, Lcom/motorola/android/internal/telephony/ApnJni;->deleteApn(II)I

    move-result v23

    .line 207
    .local v23, "ret":I
    const/4 v3, -0x1

    move/from16 v0, v23

    if-ne v0, v3, :cond_a

    .line 208
    sget-boolean v3, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->DBG:Z

    if-eqz v3, :cond_9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail to delete apn info:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v15, v20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    .line 201
    .end local v23    # "ret":I
    :cond_9
    :goto_2
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    .line 210
    .restart local v23    # "ret":I
    :cond_a
    sget-boolean v3, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->DBG:Z

    if-eqz v3, :cond_9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sccuess to delete apn info:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v15, v20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 214
    .end local v23    # "ret":I
    :cond_b
    const/4 v3, 0x1

    move/from16 v0, p1

    if-ne v0, v3, :cond_e

    .line 215
    const/4 v13, 0x3

    .line 219
    :goto_3
    new-instance v2, Lcom/motorola/android/internal/telephony/ApnInfo;

    iget v3, v14, Lcom/android/internal/telephony/dataconnection/DataProfile;->apnClass:I

    aget-object v3, v15, v3

    if-nez v3, :cond_f

    const/4 v4, 0x0

    :goto_4
    iget v5, v14, Lcom/android/internal/telephony/dataconnection/DataProfile;->apnClass:I

    iget-object v6, v14, Lcom/android/internal/telephony/dataconnection/DataProfile;->apn:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->getIPType(Lcom/android/internal/telephony/dataconnection/ApnSetting;)I

    move-result v7

    iget-boolean v8, v14, Lcom/android/internal/telephony/dataconnection/DataProfile;->carrierEnabled:Z

    const/4 v9, -0x1

    iget v10, v14, Lcom/android/internal/telephony/dataconnection/DataProfile;->authType:I

    iget-object v11, v14, Lcom/android/internal/telephony/dataconnection/DataProfile;->user:Ljava/lang/String;

    iget-object v12, v14, Lcom/android/internal/telephony/dataconnection/DataProfile;->password:Ljava/lang/String;

    move/from16 v3, p1

    invoke-direct/range {v2 .. v13}, Lcom/motorola/android/internal/telephony/ApnInfo;-><init>(IIILjava/lang/String;IZIILjava/lang/String;Ljava/lang/String;I)V

    .line 233
    .local v2, "apnInfo":Lcom/motorola/android/internal/telephony/ApnInfo;
    iget v3, v14, Lcom/android/internal/telephony/dataconnection/DataProfile;->maxConns:I

    iput v3, v2, Lcom/motorola/android/internal/telephony/ApnInfo;->max_conn:I

    .line 234
    iget v3, v14, Lcom/android/internal/telephony/dataconnection/DataProfile;->maxConns_t:I

    iput v3, v2, Lcom/motorola/android/internal/telephony/ApnInfo;->max_conn_t:I

    .line 235
    iget v3, v14, Lcom/android/internal/telephony/dataconnection/DataProfile;->waitTime:I

    iput v3, v2, Lcom/motorola/android/internal/telephony/ApnInfo;->wait_time:I

    .line 237
    sget-boolean v3, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->DBG:Z

    if-eqz v3, :cond_c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateBPApnList,apninfo is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    .line 238
    :cond_c
    const/16 v23, -0x1

    .line 239
    .restart local v23    # "ret":I
    iget v3, v14, Lcom/android/internal/telephony/dataconnection/DataProfile;->apnClass:I

    aget-object v3, v15, v3

    if-eqz v3, :cond_10

    .line 240
    iget v3, v14, Lcom/android/internal/telephony/dataconnection/DataProfile;->apnClass:I

    aget-object v3, v15, v3

    iget v3, v3, Lcom/motorola/android/internal/telephony/ApnInfo;->rat_type:I

    iput v3, v2, Lcom/motorola/android/internal/telephony/ApnInfo;->rat_type:I

    .line 241
    iget v3, v14, Lcom/android/internal/telephony/dataconnection/DataProfile;->apnClass:I

    aget-object v3, v15, v3

    iget v3, v3, Lcom/motorola/android/internal/telephony/ApnInfo;->index:I

    move/from16 v0, p1

    invoke-static {v3, v0, v2}, Lcom/motorola/android/internal/telephony/ApnJni;->setApn(IILcom/motorola/android/internal/telephony/ApnInfo;)I

    move-result v23

    .line 242
    sget-boolean v3, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->DBG:Z

    if-eqz v3, :cond_d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "to setApn:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v14, Lcom/android/internal/telephony/dataconnection/DataProfile;->apnClass:I

    aget-object v4, v15, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "to:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    .line 247
    :cond_d
    :goto_5
    const/4 v3, -0x1

    move/from16 v0, v23

    if-ne v0, v3, :cond_12

    .line 248
    sget-boolean v3, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->DBG:Z

    if-eqz v3, :cond_9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateBPApnList apn to BP fail,apninfo is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 217
    .end local v2    # "apnInfo":Lcom/motorola/android/internal/telephony/ApnInfo;
    .end local v23    # "ret":I
    :cond_e
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 219
    :cond_f
    iget v3, v14, Lcom/android/internal/telephony/dataconnection/DataProfile;->apnClass:I

    aget-object v3, v15, v3

    iget v4, v3, Lcom/motorola/android/internal/telephony/ApnInfo;->index:I

    goto/16 :goto_4

    .line 244
    .restart local v2    # "apnInfo":Lcom/motorola/android/internal/telephony/ApnInfo;
    .restart local v23    # "ret":I
    :cond_10
    sget-boolean v3, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->DBG:Z

    if-eqz v3, :cond_11

    const-string v3, "to createApn"

    invoke-static {v3}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    .line 245
    :cond_11
    move/from16 v0, p1

    invoke-static {v0, v2}, Lcom/motorola/android/internal/telephony/ApnJni;->createApn(ILcom/motorola/android/internal/telephony/ApnInfo;)I

    move-result v23

    goto :goto_5

    .line 250
    :cond_12
    sget-boolean v3, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->DBG:Z

    if-eqz v3, :cond_9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateBPApnList apn to BP succeed,apninfo is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 254
    .end local v2    # "apnInfo":Lcom/motorola/android/internal/telephony/ApnInfo;
    .end local v14    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .end local v23    # "ret":I
    :cond_13
    return-void
.end method

.method private updateApnTable([Lcom/motorola/android/internal/telephony/ApnInfo;Z)V
    .locals 11
    .param p1, "bpApnList"    # [Lcom/motorola/android/internal/telephony/ApnInfo;
    .param p2, "is3GPP2"    # Z

    .prologue
    .line 400
    if-eqz p1, :cond_0

    array-length v9, p1

    if-nez v9, :cond_1

    .line 433
    :cond_0
    return-void

    .line 402
    :cond_1
    iget-object v9, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v9}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 405
    .local v5, "resolver":Landroid/content/ContentResolver;
    const-string v6, "apn = ? AND bearer = ? AND class = 2"

    .line 408
    .local v6, "selection":Ljava/lang/String;
    const/4 v9, 0x2

    new-array v7, v9, [Ljava/lang/String;

    .line 409
    .local v7, "selectionArgs":[Ljava/lang/String;
    sget-boolean v9, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->DBG:Z

    if-eqz v9, :cond_2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "maybeUpdateApnListFromBP: selection = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    .line 411
    :cond_2
    move-object v1, p1

    .local v1, "arr$":[Lcom/motorola/android/internal/telephony/ApnInfo;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v1, v3

    .line 414
    .local v0, "apnInfo":Lcom/motorola/android/internal/telephony/ApnInfo;
    iget-object v9, v0, Lcom/motorola/android/internal/telephony/ApnInfo;->apn:Ljava/lang/String;

    if-eqz v9, :cond_3

    iget-object v9, v0, Lcom/motorola/android/internal/telephony/ApnInfo;->apn:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_3

    iget v9, v0, Lcom/motorola/android/internal/telephony/ApnInfo;->apn_class:I

    const/4 v10, 0x2

    if-eq v9, v10, :cond_4

    .line 411
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 417
    :cond_4
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 418
    .local v8, "values":Landroid/content/ContentValues;
    const-string v9, "carrier_enabled"

    iget-boolean v10, v0, Lcom/motorola/android/internal/telephony/ApnInfo;->enabled:Z

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 419
    const/4 v9, 0x0

    iget-object v10, v0, Lcom/motorola/android/internal/telephony/ApnInfo;->apn:Ljava/lang/String;

    aput-object v10, v7, v9

    .line 420
    const/4 v10, 0x1

    if-eqz p2, :cond_6

    const-string v9, "13"

    :goto_2
    aput-object v9, v7, v10

    .line 422
    :try_start_0
    sget-object v9, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v9, v8, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 429
    :cond_5
    :goto_3
    sget-boolean v9, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->DBG:Z

    if-eqz v9, :cond_3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "maybeUpdateApnListFromBP: update table carriers succeed, with values = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", selectionArgs = ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v10, v7, v10

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v10, v7, v10

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 420
    :cond_6
    const-string v9, "14"

    goto :goto_2

    .line 423
    :catch_0
    move-exception v2

    .line 424
    .local v2, "e":Ljava/lang/NullPointerException;
    sget-boolean v9, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->DBG:Z

    if-eqz v9, :cond_5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "maybeUpdateApnListFromBP: update table carriers failed, uri or values are null, with values = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", selectionArgs = ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v10, v7, v10

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v10, v7, v10

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    goto/16 :goto_3
.end method


# virtual methods
.method public checkAndSyncApnList(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/DataProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "allApns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/DataProfile;>;"
    const/4 v1, 0x0

    .line 142
    iput-boolean v1, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mIsChangedApns3GPP:Z

    .line 143
    iput-boolean v1, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mIsChangedApns3GPP2:Z

    .line 144
    invoke-direct {p0, p1}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->cacheApnListFromAp(Ljava/util/ArrayList;)V

    .line 145
    iget-boolean v0, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mIsChangedApns3GPP:Z

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mCachedApns3GPP:[Lcom/android/internal/telephony/dataconnection/ApnSetting;

    invoke-direct {p0, v1, v0}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->updateApnListToBp(I[Lcom/android/internal/telephony/dataconnection/ApnSetting;)V

    .line 148
    :cond_0
    iget-boolean v0, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mIsChangedApns3GPP2:Z

    if-eqz v0, :cond_1

    .line 149
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mCachedApns3GPP2:[Lcom/android/internal/telephony/dataconnection/ApnSetting;

    invoke-direct {p0, v0, v1}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->updateApnListToBp(I[Lcom/android/internal/telephony/dataconnection/ApnSetting;)V

    .line 151
    :cond_1
    return-void
.end method

.method public maybeUpdateApnListFromBP(Lcom/android/internal/telephony/uicc/IccRecords;)V
    .locals 22
    .param p1, "iccRecords"    # Lcom/android/internal/telephony/uicc/IccRecords;

    .prologue
    .line 259
    sget-boolean v5, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->DBG:Z

    if-eqz v5, :cond_0

    const-string v5, "call maybeUpdateApnListFromBP()"

    invoke-static {v5}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    .line 261
    :cond_0
    if-nez p1, :cond_2

    .line 262
    sget-boolean v5, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->DBG:Z

    if-eqz v5, :cond_1

    const-string v5, "maybeUpdateApnListFromBP:iccRecords is null"

    invoke-static {v5}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    .line 371
    :cond_1
    :goto_0
    return-void

    .line 265
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v16

    .line 269
    .local v16, "currentNumeric":Ljava/lang/String;
    const-string v5, "1"

    const-string v6, "persist.radio.firstupafterfr"

    const-string v7, "1"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 272
    new-instance v10, Lcom/motorola/android/internal/telephony/ApnJni;

    invoke-direct {v10}, Lcom/motorola/android/internal/telephony/ApnJni;-><init>()V

    .line 273
    .local v10, "apnJniIntf":Lcom/motorola/android/internal/telephony/ApnJni;
    sget-boolean v5, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->DBG:Z

    if-eqz v5, :cond_3

    const-string v5, "maybeUpdateApnListFromBP:new apnjni succeed!"

    invoke-static {v5}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    .line 274
    :cond_3
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/motorola/android/internal/telephony/ApnJni;->listApns(I)[Lcom/motorola/android/internal/telephony/ApnInfo;

    move-result-object v11

    .line 275
    .local v11, "bpApnsList1":[Lcom/motorola/android/internal/telephony/ApnInfo;
    const/4 v5, 0x1

    invoke-static {v5}, Lcom/motorola/android/internal/telephony/ApnJni;->listApns(I)[Lcom/motorola/android/internal/telephony/ApnInfo;

    move-result-object v12

    .line 276
    .local v12, "bpApnsList2":[Lcom/motorola/android/internal/telephony/ApnInfo;
    sget-boolean v5, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->DBG:Z

    if-eqz v5, :cond_4

    const-string v5, "maybeUpdateApnListFromBP:get list from BP succeed!"

    invoke-static {v5}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    .line 280
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mLTESupportForSprint:Z

    if-eqz v5, :cond_12

    .line 283
    if-eqz v11, :cond_5

    array-length v5, v11

    if-nez v5, :cond_6

    :cond_5
    if-eqz v12, :cond_1

    array-length v5, v12

    if-eqz v5, :cond_1

    .line 285
    :cond_6
    if-eqz v16, :cond_1

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    .line 288
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 289
    .local v4, "resolver":Landroid/content/ContentResolver;
    sget-object v5, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "mmsproxy"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "mmsport"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "mmsc"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-string v8, "mvno_type"

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-string v8, "mvno_match_data"

    aput-object v8, v6, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "numeric = \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' AND "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "type"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " like (\'%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "mms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%\') AND "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "mmsc"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " <> \'\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 297
    .local v20, "mmsCursor":Landroid/database/Cursor;
    if-eqz v20, :cond_7

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-nez v5, :cond_c

    .line 298
    :cond_7
    sget-boolean v5, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->DBG:Z

    if-eqz v5, :cond_8

    const-string v5, "maybeUpdateApnListFromBP: content provider returned no data for mmsc!"

    invoke-static {v5}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    .line 337
    :cond_8
    :goto_1
    if-eqz v20, :cond_9

    .line 338
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 339
    const/16 v20, 0x0

    .line 343
    :cond_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "numeric = \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "type"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in (\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ota"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\', \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "pam"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\', \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "internet"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\')"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 346
    .local v21, "selection":Ljava/lang/String;
    sget-object v5, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v4, v5, v0, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 347
    sget-boolean v5, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->DBG:Z

    if-eqz v5, :cond_a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "maybeUpdateApnListFromBP: delete data from table carriers, with selection = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    .line 351
    :cond_a
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v11, v1, v5}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->insertApnTable([Lcom/motorola/android/internal/telephony/ApnInfo;Ljava/lang/String;Z)V

    .line 352
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v12, v1, v5}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->insertApnTable([Lcom/motorola/android/internal/telephony/ApnInfo;Ljava/lang/String;Z)V

    .line 356
    new-instance v19, Landroid/content/Intent;

    const-string v5, "android.provider.Telephony.APNS_LOADED_FROM_XML"

    move-object/from16 v0, v19

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 357
    .local v19, "intent":Landroid/content/Intent;
    const-string v5, "loadingReason"

    const/4 v6, 0x3

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 359
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 361
    sget-boolean v5, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->DBG:Z

    if-eqz v5, :cond_b

    const-string v5, "maybeUpdateApnListFromBP: broadcase intent Telephony.Intents.APNS_LOADED_FROM_XML_ACTION"

    invoke-static {v5}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    .line 370
    .end local v4    # "resolver":Landroid/content/ContentResolver;
    .end local v19    # "intent":Landroid/content/Intent;
    .end local v20    # "mmsCursor":Landroid/database/Cursor;
    .end local v21    # "selection":Ljava/lang/String;
    :cond_b
    :goto_2
    const-string v5, "persist.radio.firstupafterfr"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 301
    .restart local v4    # "resolver":Landroid/content/ContentResolver;
    .restart local v20    # "mmsCursor":Landroid/database/Cursor;
    :cond_c
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mMmsProxyForSprint:Ljava/lang/String;

    .line 302
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mMmsPortForSprint:Ljava/lang/String;

    .line 303
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mMMSCForSprint:Ljava/lang/String;

    .line 305
    :cond_d
    const-string v5, "mvno_type"

    move-object/from16 v0, v20

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v20

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 307
    .local v18, "cursorMvnoType":Ljava/lang/String;
    const-string v5, "mvno_match_data"

    move-object/from16 v0, v20

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v20

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 309
    .local v17, "cursorMvnoMatchData":Ljava/lang/String;
    const-string v5, "mmsproxy"

    move-object/from16 v0, v20

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 310
    .local v15, "colMmsProxyIndex":I
    const-string v5, "mmsport"

    move-object/from16 v0, v20

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 311
    .local v14, "colMmsPortIndex":I
    const-string v5, "mmsc"

    move-object/from16 v0, v20

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 312
    .local v13, "colMmsMMSCIndex":I
    if-eqz v18, :cond_e

    if-eqz v17, :cond_e

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mvnoMatches(Lcom/android/internal/telephony/uicc/IccRecords;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 315
    move-object/from16 v0, v20

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mMmsProxyForSprint:Ljava/lang/String;

    .line 316
    move-object/from16 v0, v20

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mMmsPortForSprint:Ljava/lang/String;

    .line 317
    move-object/from16 v0, v20

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mMMSCForSprint:Ljava/lang/String;

    .line 331
    :goto_3
    sget-boolean v5, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->DBG:Z

    if-eqz v5, :cond_8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "maybeUpdateApnListFromBP: mMmsProxyForSprint = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mMmsProxyForSprint:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mMmsPortForSprint = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mMmsPortForSprint:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mMMSCForSprint = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mMMSCForSprint:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 321
    :cond_e
    if-eqz v18, :cond_f

    const-string v5, ""

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    :cond_f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mMMSCForSprint:Ljava/lang/String;

    if-eqz v5, :cond_10

    const-string v5, ""

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mMMSCForSprint:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 324
    :cond_10
    move-object/from16 v0, v20

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mMmsProxyForSprint:Ljava/lang/String;

    .line 325
    move-object/from16 v0, v20

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mMmsPortForSprint:Ljava/lang/String;

    .line 326
    move-object/from16 v0, v20

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mMMSCForSprint:Ljava/lang/String;

    .line 329
    :cond_11
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_d

    goto :goto_3

    .line 364
    .end local v4    # "resolver":Landroid/content/ContentResolver;
    .end local v13    # "colMmsMMSCIndex":I
    .end local v14    # "colMmsPortIndex":I
    .end local v15    # "colMmsProxyIndex":I
    .end local v17    # "cursorMvnoMatchData":Ljava/lang/String;
    .end local v18    # "cursorMvnoType":Ljava/lang/String;
    .end local v20    # "mmsCursor":Landroid/database/Cursor;
    :cond_12
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v5}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->updateApnTable([Lcom/motorola/android/internal/telephony/ApnInfo;Z)V

    .line 365
    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v5}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->updateApnTable([Lcom/motorola/android/internal/telephony/ApnInfo;Z)V

    goto/16 :goto_2
.end method
